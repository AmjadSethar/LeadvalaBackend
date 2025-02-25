<?php

namespace App\Exceptions;

use Exception;
use Symfony\Component\HttpFoundation\Response;

class ExceptionHandler extends Exception
{
    protected $message;

    protected $statusCode;

    public function __construct($message, $statusCode)
    {
        $statusCode = (is_int($statusCode) && ($statusCode > 0 && $statusCode <= 500)) ? $statusCode : Response::HTTP_INTERNAL_SERVER_ERROR;
        parent::__construct($message, $statusCode);

        $this->message = $message;
        $this->statusCode = $statusCode;
    }

    public function isClientSafe(): bool
    {
        return true;
    }

    public function getCategory(): string
    {
        return trans('errors.get_category');
    }

    public function render()
    {
        return response()->json([
            'message' => $this->message,
            'success' => false,
        ], $this->statusCode);
    }
}
