@use('App\Helpers\Helpers')
@use('App\Models\Setting')
@php
    $settings = Setting::first()->values;
@endphp
<!-- Page Sidebar Start-->
<div class="page-sidebar">
    <div class="main-header-left">
        <div class="logo-wrapper">
            <a href="{{ route('backend.dashboard') }}">
                <img class="blur-up lazyloaded img-fluid" src="{{ $settings['general']['light_logo'] ?? asset('admin/images/Logo-Light.png') }}" alt="site-logo">
            </a>
            <i data-feather="menu" class="close-sidebar" id="close-sidebar"></i>
        </div>
    </div>
    <div class="sidebar custom-scrollbar">
        <ul class="sidebar-menu" id="sidebar-menu">
            <li class="sidebar-main-title">
                <div>
                    <h6>{{ __('static.dashboard.dashboard') }}</h6>
                </div>
            </li>
            <li>
                <a href="{{ route('backend.dashboard') }}" class="sidebar-header {{ Request::is('backend/dashboard*') ? 'active' : '' }}">
                    <i data-feather="home"></i>
                    <img class="active-icon" src="{{ asset('admin/images/svg/home.svg') }}"><span>{{ __('static.dashboard.dashboard') }}</span>
                </a>
            </li>
            @canAny(['backend.user.index', 'backend.serviceman_withdraw_request.index', 'backend.role.index', 'backend.serviceman.index', 'backend.serviceman_wallet.index' ,'backend.provider.index', 'backend.provider_document.index','backend.provider_time_slot.index','backend.provider_wallet.index','backend.withdraw_request.index'])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.user_management') }}</h6>
                    </div>
                </li>
                @canAny(['backend.user.index', 'backend.role.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/user*') || Request::is('backend/role*') ? 'active' : '' }}">
                        <i data-feather="users"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/people.svg') }}"><span>{{ __('static.users.system_users') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/user*') || Request::is('backend/role*') ? 'menu-open' : '' }}">
                        @can('backend.user.index')
                        <li>
                            <a href="{{ route('backend.user.index') }}" class="{{ Request::is('backend/user') && !Request::is('backend/user/create') ? 'active' : '' }}">{{ __('static.users.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.users.create')
                        <li>
                            <a href="{{ route('backend.user.create') }}" class="{{ Request::is('backend/user/create') ? 'active' : '' }}">{{ __('static.users.create') }}</a>
                        </li>
                        @endcan
                        @can('backend.role.index')
                        <li>
                            <a href="{{ route('backend.role.index') }}" class="{{ Request::is('backend/role*') || Request::is('backend/role/create') ? 'active' : '' }}">{{ __('static.role') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny
                @canAny(['backend.customer.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/customer*') ? 'active' : '' }}">
                        <i data-feather="user-plus"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/customer.svg') }}"><span>{{ __('static.customer.customers') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/customer*') ? 'menu-open' : '' }}">
                        @can('backend.customer.index')
                        <li>
                            <a href="{{ route('backend.customer.index') }}" class="{{ Request::is('backend/customer') && !Request::is('backend/customer/create') ? 'active' : '' }}">{{ __('static.customer.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.customer.create')
                        <li>
                            <a href="{{ route('backend.customer.create') }}" class="{{ Request::is('backend/customer/create') ? 'active' : '' }}">{{ __('static.customer.create') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny

                @canAny(['backend.serviceman.index', 'backend.serviceman.create', 'backend.serviceman_withdraw_request.index', 'backend.serviceman_wallet.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/serviceman*') ? 'active' : '' }}">
                        <i data-feather="user-check"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/user-square.svg') }}"><span>{{ __('static.serviceman.servicemen') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/serviceman*') ? 'menu-open' : '' }}">
                        @can('backend.serviceman.index')
                        <li>
                            <a href="{{ route('backend.serviceman.index') }}" class=" {{ Request::is('backend/serviceman') ? 'active' : '' }}">{{ __('static.serviceman.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.serviceman.create')
                        <li>
                            <a href="{{ route('backend.serviceman.create') }}" class=" {{ Request::is('backend/serviceman/create') ? 'active' : '' }}">{{ __('static.serviceman.create') }}</a>
                        </li>
                        @endcan
                        @can('backend.serviceman_wallet.index')
                        <li>
                            <a href="{{ route('backend.serviceman-wallet.index') }}" class="{{ Request::is('backend/serviceman-wallet*') ? 'active' : '' }}">{{ __('static.wallet.wallet') }}</a>
                        </li>
                        @endcan
                        @can('backend.serviceman_withdraw_request.index')
                        <li>
                            <a href="{{ route('backend.serviceman-withdraw-request.index') }}" class="{{ Request::is('backend/serviceman-withdraw-request*') ? 'active' : '' }}">{{ __('static.withdraw.withdraw_request') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny

                @canAny(['backend.commission_history.index', 'backend.provider.index', 'backend.provider_document.index','backend.provider_time_slot.index','backend.provider_wallet.index','backend.withdraw_request.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/provider*') || Request::is('backend/commission*') ||Request::is('backend/withdraw-request*') ? 'active' : '' }}">
                        <i data-feather="user"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/user-cirlce-add.svg') }}">
                        <span>{{ __('static.provider.providers') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/provider*')|| Request::is('backend/withdraw-request*') ||Request::is('backend/commission*') ? 'menu-open' : '' }}">
                        @can('backend.provider.index')
                        <li>
                            <a href="{{ route('backend.provider.index') }}" class="{{ Request::is('backend/provider') && !Request::is('backend/provider/create') && !Request::is('backend/provider-document*') ? 'active' : '' }}">{{ __('static.provider.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.provider.create')
                        <li>
                            <a href="{{ route('backend.provider.create') }}" class="{{ Request::is('backend/provider/create') ? 'active' : '' }}">{{ __('static.provider.create') }}</a>
                        </li>
                        @endcan
                        @can('backend.provider_wallet.index')
                        <li>
                            <a href="{{ route('backend.provider-wallet.index') }}" class="{{ Request::is('backend/provider-wallet*') ? 'active' : '' }}">{{ __('static.wallet.wallet') }}</a>
                        </li>
                        @endcan
                        @can('backend.provider_document.index')
                        <li>
                            <a href="{{ route('backend.provider-document.index') }}" class="{{ Request::is('backend/provider-document*') ? 'active' : '' }}">{{ __('static.provider_document.provider_documents') }}</a>
                        </li>
                        @endcan
                        @can('backend.provider_time_slot.index')
                        <li>
                            <a href="{{ route('backend.provider-time-slot.index') }}" class="{{ Request::is('backend/provider-time-slot*') ? 'active' : '' }}">{{ __('static.provider_time_slot.provider_time_slot') }}</a>
                        </li>
                        @endcan
                        @can('backend.commission_history.index')
                        <li>
                            <a href="{{ route('backend.commission.index') }}" class="{{ Request::is('backend/commission*') ? 'active' : '' }}">{{ __('static.commission_history.commission_history') }}</a>
                        </li>
                        @endcan
                        @can('backend.withdraw_request.index')
                        <li>
                            <a href="{{ route('backend.withdraw-request.index') }}" class="{{ Request::is('backend/withdraw-request*') ? 'active' : '' }}">{{ __('static.withdraw.withdraw_request') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny
            @endcan

            @canAny(['backend.zone.index', 'backend.service-package.index', 'backend.service.index', 'backend.service_category.index'])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.service_management') }}</h6>
                    </div>
                </li>

                @can('backend.zone.index')
                <li>
                    <a href="{{ route('backend.zone.index') }}" class="sidebar-header {{ Request::is('backend/zone*') ? 'active' : '' }}">
                        <i data-feather="map"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/setting-3.svg') }}"><span>{{ __('static.zone.zones') }}</span>
                    </a>
                </li>
                @endcan

                @canAny(['backend.service-package.index', 'backend.service.index', 'backend.service_category.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ (Request::is('backend/service*') && !Request::is('backend/serviceman*')) || Request::is('backend/service-package*') || Request::is('backend/category*') ? 'active' : '' }}">

                        <i data-feather="settings"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/cpu-setting.svg') }}"><span>{{ __('static.service.services') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ (Request::is('backend/service*') && !Request::is('backend/serviceman*')) || Request::is('backend/category*') ? 'menu-open' : '' }}">
                        @can('backend.service.index')
                        <li>
                            <a href="{{ route('backend.service.index') }}" class="{{ Request::is('backend/service*') && !Request::is('backend/service/create') && !Request::is('backend/serviceman*') && !Request::is('backend/service-package*') ? 'active' : '' }}">{{ __('static.service.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.service.create')
                        <li>
                            <a href="{{ route('backend.service.create') }}" class="{{ Request::is('backend/service/create') ? 'active' : '' }}">{{ __('static.service.create') }}</a>
                        </li>
                        @endcan
                        @can('backend.service_category.index')
                        <li>
                            <a href="{{ route('backend.category.index') }}" class="{{ Request::is('backend/category*') ? 'active' : '' }}">{{ __('static.categories.categories') }}</a>
                        </li>
                        @endcan
                        @can('backend.service-package.index')
                        <li>
                            <a href="{{ route('backend.service-package.index') }}" class="{{ Request::is('backend/service-package*') ? 'active' : '' }}">{{ __('static.service_package.service_packages') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny
            @endcan

            @canAny(['backend.booking.index','backend.payment_method.index', 'backend.review.index'])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.booking_management') }}</h6>
                    </div>
                </li>
                @can('backend.booking.index')
                <li>
                    <a href="{{ route('backend.booking.index') }}" class="sidebar-header {{ Request::is('backend/booking*') ? 'active' : '' }}">
                        <i data-feather="calendar"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/calendar.svg') }}"><span>{{ __('static.booking.bookings') }}</span>
                    </a>
                </li>
                @endcan

                @can('backend.payment_method.index')
                <li>
                    <a href="{{ route('backend.transaction.index') }}" class="sidebar-header {{ Request::is('backend/transaction*') ? 'active' : '' }}">
                        <i data-feather="credit-card"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/calendar.svg') }}"><span>{{ __('static.transaction.transactions') }}</span>
                    </a>
                </li>
                @endcan

                @can('backend.review.index')
                <li>
                    <a href="{{ route('backend.reviews') }}" class="sidebar-header {{ Request::is('backend/review-user*') ? 'active' : '' }}">
                        <i data-feather="star"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/notification-status.svg') }}"><span>{{ __('static.review.all') }}</span>
                    </a>
                </li>
                @endcan
            @endcan

            @canAny(['backend.coupon.index', 'backend.plan.index', 'backend.banner.index' ])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.marketing_advertising') }}</h6>
                    </div>
                </li>
                @can('backend.coupon.index')
                <li>
                    <a href="{{ route('backend.coupon.index') }}" class="sidebar-header {{ Request::is('backend/coupon*') ? 'active' : '' }}">
                        <i data-feather="tag"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/ticket-star.svg') }}"><span>{{ __('static.coupon.coupons') }}</span>
                    </a>
                </li>
                @endcan
                @if (Helpers::isModuleEnable('Subscription'))
                    @can('backend.plan.index')
                    <li>
                        <a href="javascript:void(0);" class="sidebar-header  {{ (Request::is('backend/plan*') || Request::is('backend/subscriptions*')) ? 'active' : '' }}">
                            <i data-feather="credit-card"></i>
                            <img class="active-icon" src="{{ asset('admin/images/svg/notification-status.svg') }}"><span>{{ __('static.plan.plans') }}</span>
                            <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                        </a>
                        <ul class="sidebar-submenu {{(Request::is('backend/plan*') || Request::is('backend/subscriptions*')) ? 'menu-open' : '' }}">


                            <li>
                                <a href="{{ route('backend.plan.index') }}" class="{{  Request::is('backend/plan*') ? 'active' : '' }}">{{ __('static.plan.all') }}</a>
                            </li>


                            <li>
                                <a href="{{ route('backend.subscription.index') }}" class="{{  Request::is('backend/subscriptions*') ? 'active' : '' }}">{{ __('static.plan.subscriptions') }}</a>
                            </li>



                        </ul>
                    </li>
                    @endcan
                @endif
                @can('backend.banner.index')
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/banner*') ? 'active' : '' }}">
                        <i data-feather="trello"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/notification-status.svg') }}"><span>{{ __('static.banner.banners') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/banner*') ? 'menu-open' : '' }}">
                        @can('backend.banner.index')
                        <li>
                            <a href="{{ route('backend.banner.index') }}" class="{{ Request::is('backend/banner') && !Request::is('backend/banner/create') ? 'active' : '' }}">{{ __('static.banner.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.banner.create')
                        <li>
                            <a href="{{ route('backend.banner.create') }}" class="{{ Request::is('backend/banner/create') ? 'active' : '' }}">{{ __('static.banner.create') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan
                @can('backend.push_notification.index')
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/notifications*') || Request::is('backend/push-notifications') ? 'active' : '' }}">
                        <i data-feather="bell"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/bell.svg') }}"><span>{{ __('static.notification.notifications') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/notifications') || Request::is('backend/push-notifications') ? 'menu-open' : '' }}">
                        @can('backend.push_notification.index')
                        <li>
                            <a href="{{ route('backend.notifications') }}" class="{{ Request::is('backend/notifications*') && !Request::is('backend/push-notifications') ? 'active' : '' }}">{{ __('static.notification.list_notifications') }}</a>
                        </li>
                        @endcan
                        @can('backend.push_notification.create')
                        <li>
                            <a href="{{ route('backend.push-notifications') }}" class="{{ Request::is('backend/push-notifications') ? 'active' : '' }}">{{ __('static.notification.send') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan
            @endcan

            @canAny(['backend.tax.index', 'backend.currency.index', 'backend.wallet.index' ])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.financial_management') }}</h6>
                    </div>
                </li>
                @can('backend.tax.index')
                <li>
                    <a href="{{ route('backend.tax.index') }}" class="sidebar-header {{ Request::is('backend/tax*') ? 'active' : '' }}">
                        <i data-feather="percent"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/percentage-square.svg') }}"><span>{{ __('static.tax.taxes') }}</span>
                    </a>
                </li>
                @endcan
                @can('backend.currency.index')
                <li>
                    <a href="{{ route('backend.currency.index') }}" class="sidebar-header {{ Request::is('backend/currency*') ? 'active' : '' }}">
                        <i data-feather="dollar-sign"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/dollar-square.svg') }}"><span>{{ __('static.currency.currencies') }}</span>
                    </a>
                </li>
                @endcan
                @can('backend.wallet.index')
                <li>
                    <a href="{{ route('backend.wallet.index') }}" class="sidebar-header {{ Request::is('backend/wallet*') ? 'active' : '' }}">
                        <i data-feather="credit-card"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/empty-wallet-1.svg') }}"><span>{{ __('static.wallet.wallet') }}</span>
                    </a>
                </li>
                @endcan
            @endcan

            @canAny(['backend.blog_category.index', 'backend.tag.index', 'backend.blog.index', 'backend.page.index'])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.content_management') }}</h6>
                    </div>
                </li>
                @canAny(['backend.blog_category.index', 'backend.tag.index', 'backend.blog.index'])
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/tag*') || Request::is('backend/blog*') || Request::is('backend/blog-category*') ? 'active' : '' }}">
                        <i data-feather="edit"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/card-edit.svg') }}"><span>{{ __('static.blog.blogs') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/blog*') || Request::is('backend/tag*') ? 'menu-open' : '' }}">
                        @can('backend.blog.index')
                        <li>
                            <a href="{{ route('backend.blog.index') }}" class="{{ Request::is('backend/blog') ? 'active' : '' }}">{{ __('static.blog.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.blog.create')
                        <li>
                            <a href="{{ route('backend.blog.create') }}" class="{{ Request::is('backend/blog/create') ? 'active' : '' }}">{{ __('static.blog.create') }}</a>
                        </li>
                        @endcan
                        @can('backend.blog_category.index')
                        <li>
                            <a href="{{ route('backend.blog-category.index') }}" class="{{ Request::is('backend/blog-category*') ? 'active' : '' }}">{{ __('static.categories.categories') }}</a>
                        </li>
                        @endcan
                        @can('backend.tag.index')
                        <li>
                            <a href="{{ route('backend.tag.index') }}" class="{{ Request::is('backend/tag*') ? 'active' : '' }}">{{ __('static.tag.tags') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcanAny
                @can('backend.page.index')
                <li>
                    <a href="{{ route('backend.page.index') }}" class="sidebar-header {{ Request::is('backend/page*') ? 'active' : '' }}">
                        <i data-feather="file-text"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/note.svg') }}"><span>{{ __('static.page.pages') }}</span>
                    </a>
                </li>
                @endcan
            @endcan

            @canAny(['backend.document.index', 'backend.language.index', 'backend.payment_method.index','backend.setting.index'])
                <li class="sidebar-main-title">
                    <div>
                        <h6>{{ __('static.dashboard.settings_management') }}</h6>
                    </div>
                </li>
                @can('backend.document.index')
                <li>
                    <a href="javascript:void(0);" class="sidebar-header {{ Request::is('backend/document*') ? 'active' : '' }}">
                        <i data-feather="folder"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/document-favorite.svg') }}"><span>{{ __('static.document.document') }}</span>
                        <img class="stroke-icon" src="{{ asset('admin/images/svg/arrow-right.svg') }}">
                    </a>
                    <ul class="sidebar-submenu {{ Request::is('backend/document*') ? 'menu-open' : '' }}">
                        @can('backend.document.index')
                        <li>
                            <a href="{{ route('backend.document.index') }}" class="{{ Request::is('backend/document*') && !Request::is('backend/document/create') ? 'active' : '' }}">{{ __('static.document.all') }}</a>
                        </li>
                        @endcan
                        @can('backend.document.create')
                        <li>
                            <a href="{{ route('backend.document.create') }}" class="{{ Request::is('backend/document/create') ? 'active' : '' }}">{{ __('static.document.create') }}</a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan
                @can('backend.language.index')
                <li>
                    <a href="{{ route('backend.systemLang.index') }}" class="sidebar-header {{ Request::is('backend/systemLang*') ? 'active' : '' }}">
                        <i data-feather="globe"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/setting-3.svg') }}"><span>{{ __('static.language.languages') }}</span>
                    </a>
                </li>
                @endcan
                @can('backend.payment_method.index')
                <li>
                    <a href="{{ route('backend.paymentmethods.index') }}" class="sidebar-header {{ Request::is('backend/payment-methods*') ? 'active' : '' }}">
                        <i data-feather="layers"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/setting-3.svg') }}"><span>{{ __('static.payment_methods.payment_methods') }}</span>
                    </a>
                </li>
                @endcan
                @can('backend.setting.index')
                <li>
                    <a href="{{ route('backend.settings.index') }}" class="sidebar-header {{ Request::is('backend/settings*') ? 'active' : '' }}">
                        <i data-feather="cpu"></i>
                        <img class="active-icon" src="{{ asset('admin/images/svg/setting-3.svg') }}"><span>{{ __('static.settings.settings') }}</span>
                    </a>
                </li>
                @endcan
            @endcan
        </ul>
    </div>
</div>
<!-- Page Sidebar End -->
