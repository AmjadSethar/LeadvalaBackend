<?php

namespace App\Http\Traits;

use App\Enums\AmountEnum;
use App\Exceptions\ExceptionHandler;
use App\Helpers\Helpers;
use Exception;
use Illuminate\Http\Request;

trait CheckoutTrait
{
    use CouponTrait, UtilityTrait, WalletPointsTrait;

    public function calculate(Request $request)
    {

        try {
            $settings = Helpers::getSettings();
            $minBookingAmount = $settings['general']['min_booking_amount'];
            $services = $request->services ?? [];

            $service_package = $request->service_packages;
            
            $request->merge(['services' => $services, 'service_package' => $service_package]);
            $amount = Helpers::getTotalAmount($request->services, $request->service_package);
            if ($amount < $minBookingAmount) {
                
                throw new Exception(__('errors.minimum_booking_amount',['minBookingAmount' => $minBookingAmount]), 422);
            }

            return $this->getCosts($request);

        } catch (Exception $e) {
            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function getCosts($request)
    {
        return $this->calculateCosts($request);
        
    }

    public function calculateCosts($request)
    {
        try {
            $tax = [];
            $walletBalance = 0;
            $perServiceCost = [];
            $couponTotalDiscount = [];

            $convert_wallet_balance = 0;

            $settings = Helpers::getSettings();

            $amount = Helpers::getTotalAmount($request->services, $request->service_package);

            $items = $this->calculateService($request, $request->services, $amount);

            if ($request->service_packages) {
                $items['services_package'] = $this->calculateServicePackage($request->service_packages, $request);
            }

            $total = $amount;
            $couponDiscount = array_sum($couponTotalDiscount);

            if ($request->wallet_balance) {
                if ($this->verifyWallet($this->getConsumerId($request), $walletBalance)) {
                    $convert_wallet_balance = abs($walletBalance);
                    $walletBalance -= $convert_wallet_balance;
                    $total -= $convert_wallet_balance;
                    if ($total < 0) {
                        $walletBalance = abs($total);
                        $total = 0;
                    }

                    if ($walletBalance > 0) {
                        $convert_wallet_balance -= $walletBalance;
                    }

                    $convert_wallet_balance = -$convert_wallet_balance;
                }
            }

            if ($couponDiscount > 0) {
                $total -= $couponDiscount;
                if ($total < 0) {
                    $couponDiscount = abs($total);
                    $total = 0;
                }
            }

            $total += array_sum($tax);
            $platform_fees = round($this->getTotalItems($items, 'platform_fees'));
            $itemTotal = [
                'required_servicemen' => $this->getTotalItems($items, 'required_servicemen'),
                'total_extra_servicemen' => $this->getTotalItems($items, 'total_extra_servicemen'),
                'total_servicemen' => $this->getTotalItems($items, 'total_servicemen'),
                'total_serviceman_charge' => $this->getTotalItems($items, 'total_serviceman_charge'),
                'coupon_total_discount' => $this->getTotalItems($items, 'coupon_total_discount'),
                'tax' => $this->getTotalItems($items, 'tax'),
                'platform_fees' => $platform_fees,
                'platform_fees_type' => $settings['general']['platform_fees_type'],
                'subtotal' => $this->getTotalItems($items, 'subtotal'),
                'total' => round($this->getTotalItems($items, 'total'), 3),
            ];

            $items['total'] = $itemTotal;

            return $items;

        } catch (Exception $e) {

            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function getTotalItems($items, $key)
    {
        $total = [];
        foreach ($items['services'] as $service) {

            $total[] = $service['total'][$key];
        }

        if (isset($items['services_package'])) {
            foreach ($items['services_package'] as $servicePackage) {
                foreach ($servicePackage['services'] as $service) {
                    $total[] = $service['total'][$key];
                }
            }
        }

        return array_sum($total);
    }

    public function getTax($service_id, $subtotal)
    {
        $tax = 0;
        $tax_id = $this->getTaxId($service_id);
        $taxRate = $this->getTaxRate($tax_id);
        if ($taxRate) {
            $tax = ($subtotal * $taxRate) / 100;
        }

        return $tax;
    }

    public function calculateServicePackage($service_packages, $request)
    {
        $settings = Helpers::getSettings();
        foreach ($service_packages as $key => $service_package) {
            $services = $service_package['services'];
            $servicePackage = $service_package;
            $platFormFees = $this->getPlatFormFees($services);
            foreach ($services as $service) {

                $couponTotalDiscount = [];
                $perServiceTax = 0;
                $perServicemanCharge = 0;
                $perServiceDiscount = 0;

                $singleServicePrice = Helpers::getSalePrice($service);
                $requiredServiceman = Helpers::getTotalRequireServicemenByServiceId($service['service_id']);

                $perServicemanCharge = ($requiredServiceman != 0) ? ($singleServicePrice / $requiredServiceman) : 0;
                $subTotal = Helpers::getSubTotal($perServicemanCharge) * $service['required_servicemen'];
                $totalExtraServicemanCharge = 0;

                if ($service_package) {
                    $extraServiemen = 1;
                    $singleServicePackagePrice = (Helpers::getPackageSalePrice($service_package) / count($services));
                    $extraServiemenPerService = $service['required_servicemen'] - $requiredServiceman;
                    $total_servicemen = $extraServiemenPerService ?? 0 + $requiredServiceman ?? 0;

                    $totalExtraServicemanCharge = $extraServiemenPerService * $singleServicePrice;
                    $perServicemanCharge = ($requiredServiceman != 0) ? ($singleServicePrice / $requiredServiceman) : 0;
                    $subTotal = $singleServicePackagePrice + $totalExtraServicemanCharge;
                    $service['required_servicemen'] = $extraServiemenPerService;
                }

                if (isset($request->coupon)) {
                    $coupon = Helpers::getCoupon($request->coupon);
                    if ($this->isValidCoupon($coupon, $subTotal, $this->getConsumerId($request))) {
                        if ($this->isIncludeOrExclude($coupon, $service)) {
                            switch ($coupon->type) {
                                case AmountEnum::FIXED:
                                    $perServiceDiscount = $this->fixedDiscount($subTotal, $coupon->amount);
                                    break;

                                case AmountEnum::PERCENTAGE:
                                    $perServiceDiscount = $this->percentageDiscount($subTotal, $coupon->amount);
                                    break;

                                default:
                                    $perProductShippingCost = 0;
                                    $shippingTotal = 0;
                            }

                            $couponTotalDiscount[] = $perServiceDiscount;
                            $subTotal = $subTotal - $perServiceDiscount;
                        }
                    }
                }
                $perServiceTax = $this->getTax($service['service_id'], $subTotal);
                $_item[$key]['service_package_id'] = $service_package['service_package_id'];
                $_item[$key]['services'][] = [
                    'service_package_id' => $service_package['service_package_id'],
                    'provider_id' => Helpers::getProviderIdByServiceId($service['service_id']),
                    'service_id' => $service['service_id'],
                    'service_package_price' => Helpers::getPackageSalePrice($service_package),
                    'address_id' => $service['address_id'],
                    'tax' => $perServiceTax,
                    'service_price' => $singleServicePackagePrice,
                    'per_serviceman_charge' => $perServicemanCharge,
                    'date_time' => $service['date_time'],
                    'servicemen_ids' => $service['serviceman_id'],
                    'total' => [
                        'required_servicemen' => $requiredServiceman,
                        'total_extra_servicemen' => $extraServiemenPerService,
                        'total_servicemen' => $total_servicemen,
                        'total_serviceman_charge' => $totalExtraServicemanCharge,
                        'coupon_total_discount' => array_sum($couponTotalDiscount),
                        'platform_fees' => $platFormFees,
                        'platform_fees_type' => $settings['general']['platform_fees_type'],
                        'tax' => $perServiceTax,
                        'subtotal' => $subTotal,
                        'total' => $subTotal + $perServiceTax+ $platFormFees,
                    ],
                ];
            }
        }

        return $_item;

    }

    public function getPlatFormFees($services)
    {
        $settings = Helpers::getSettings();
        $platFormFees = 0;
        if (isset($settings['activation']['platform_fees_status'])) {
            if ($settings['activation']['platform_fees_status']) {
                $platFormFees = $settings['general']['platform_fees'];
                if ($settings['general']['platform_fees_type'] === 'fixed') {
                    $platFormFees = round($platFormFees / count($services),2);
                }
            }
        }

        return (double) $platFormFees;
    }

    public function calculateService($request, $services, $amount, $servicePackage = null)
    {
        $couponTotalDiscount = [];
        $_item = ['services' => []];
        $settings = Helpers::getSettings();

        // Get Platform Fees
        $platFormFees = $this->getPlatFormFees($services);

        foreach ($services as $service) {
            $perServicemanCharge = 0;
            $perServiceDiscount = 0;
            $perServiceTax = 0;

            $singleServicePrice = Helpers::getSalePrice($service);

            $requiredServiceman = Helpers::getTotalRequireServicemenByServiceId($service['service_id']);

            $total_extra_servicemen = isset($service['required_servicemen']) ? $service['required_servicemen'] - $requiredServiceman : 0;

            $total_servicemen = $requiredServiceman ?? 0 + $total_extra_servicemen ?? 0;
            $perServicemanCharge = ($requiredServiceman != 0) ? ($singleServicePrice / $requiredServiceman) : 0;
            $platformfees = 0;

            $subTotal = isset($service['required_servicemen']) ? Helpers::getSubTotal($perServicemanCharge) * $service['required_servicemen'] : 0;
            if (isset($request->coupon)) {
                $coupon = Helpers::getCoupon($request->coupon);
                if ($this->isValidCoupon($coupon, $amount, $this->getConsumerId($request))) {
                    if ($this->isIncludeOrExclude($coupon, $service)) {
                        switch ($coupon->type) {
                            case AmountEnum::FIXED:
                                $perServiceDiscount = $this->fixedDiscount($subTotal, $coupon->amount);
                                break;

                            case AmountEnum::PERCENTAGE:
                                $perServiceDiscount = $this->percentageDiscount($subTotal, $coupon->amount);
                                break;

                            default:
                                $perProductShippingCost = 0;
                                $shippingTotal = 0;
                        }
                        $couponTotalDiscount[] = $perServiceDiscount;
                        $subTotal = $subTotal - $perServiceDiscount;
                    }
                }
            }


            $perServiceTax = $this->getTax($service['service_id'], $subTotal);
            $tax[] = $perServiceTax;

            // $_item['services'][] = [
            //     'provider_id' => Helpers::getProviderIdByServiceId($service['service_id']),
            //     'service_id' => $service['service_id'],
            //     'service_price' => $singleServicePrice,
            //     'address_id' => $service['address_id'],
            //     'per_serviceman_charge' => $perServicemanCharge,
            //     'date_time' => $service['date_time'],
            //     'servicemen_ids' => $service['serviceman_id'],
            //     'total' => [
            //         'required_servicemen' => $requiredServiceman,
            //         'total_extra_servicemen' => $total_extra_servicemen,
            //         'total_servicemen' => $total_servicemen,
            //         'total_serviceman_charge' => $perServicemanCharge * $service['required_servicemen'],
            //         'coupon_total_discount' => array_sum($couponTotalDiscount),
            //         'platform_fees' => $platFormFees,
            //         'platform_fees_type' => $settings['general']['platform_fees_type'],
            //         'tax' => $perServiceTax,
            //         'subtotal' => $subTotal,
            //         'total' => $subTotal + $perServiceTax + $platFormFees,
            //     ],
            // ];

            $_item['services'][] = [
                'provider_id' => Helpers::getProviderIdByServiceId($service['service_id']),
                'service_id' => $service['service_id'],
                'service_price' => $singleServicePrice,
                'address_id' => isset($service['address_id']),
                'per_serviceman_charge' => $perServicemanCharge,
                'date_time' => isset($service['date_time']),
                'servicemen_ids' => isset($service['serviceman_id']) ? $service['serviceman_id'] : [], // Default to empty array if not set
                'total' => [
                    'required_servicemen' => isset($requiredServiceman) ? $requiredServiceman : 0, // Default to 0 if not set
                    'total_extra_servicemen' => isset($total_extra_servicemen) ? $total_extra_servicemen : 0, // Default to 0 if not set
                    'total_servicemen' => isset($total_servicemen) ? $total_servicemen : 0, // Default to 0 if not set
                    'total_serviceman_charge' => isset($perServicemanCharge) && isset($service['required_servicemen']) ? $perServicemanCharge * $service['required_servicemen'] : 0, // Default to 0 if either value is missing
                    'coupon_total_discount' => array_sum($couponTotalDiscount),
                    'platform_fees' => isset($platFormFees) ? $platFormFees : 0, // Default to 0 if not set
                    'platform_fees_type' => isset($settings['general']['platform_fees_type']) ? $settings['general']['platform_fees_type'] : 'default', // Default to 'default' if not set
                    'tax' => isset($perServiceTax) ? $perServiceTax : 0, // Default to 0 if not set
                    'subtotal' => isset($subTotal) ? $subTotal : 0, // Default to 0 if not set
                    'total' => isset($subTotal) && isset($perServiceTax) && isset($platFormFees) ? $subTotal + $perServiceTax + $platFormFees : 0, // Default to 0 if any value is missing
                ],
            ];

            
            
        }

        return $_item;
    }
}
