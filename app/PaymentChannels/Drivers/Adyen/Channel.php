<?php

namespace App\PaymentChannels\Drivers\Adyen;

use App\Models\Order;
use App\Models\PaymentChannel;
use App\PaymentChannels\IChannel;
use Illuminate\Http\Request;

class Channel implements IChannel
{
    protected $api_key;
    protected $client_key;

    /**
     * Channel constructor.
     * @param PaymentChannel $paymentChannel
     */
    public function __construct(PaymentChannel $paymentChannel)
    {
        $this->api_key = env('ADYEN_API_KEY');
        $this->client_key = env('ADYEN_CLIENT_KEY');
    }

    public function paymentRequest(Order $order)
    {
        $price = $order->total_amount;
        $currency = currency();

        $client = new \Adyen\Client();
        $client->setXApiKey($this->api_key);
        $client->setEnvironment(\Adyen\Environment::TEST);
        $client->setTimeout(30);

        $service = new \Adyen\Service\Checkout($client);

        $params = [
            "merchantAccount" => env('MERCHANT_ACCOUNT'),
            "channel" => "Web", // required
            "amount" => array(
                "currency" => $currency,
                "value" => ($currency == 'USD' or $currency == 'EUR') ? $price * 100 : $price
            ),
            "reference" => $order->id, // required
            "additionalData" => [ // required for 3ds2 native flow
                "allow3DS2" => "true"
            ],
            "origin" => url('/'), // required for 3ds2 native flow
            "shopperIP" => $order->user_id,// required by some issuers for 3ds2
            "returnUrl" => $this->makeCallbackUrl($order),
            "paymentMethod" => 'VISA',
            "browserInfo" => 'test' // required for 3ds2
        ];

        $response = $service->payments($params);
        dd($response);
    }

    private function makeCallbackUrl($order)
    {
        $callbackUrl = route('payment_verify', [
            'gateway' => 'Adyen',
            'order_id' => $order->id
        ]);

        return $callbackUrl;
    }

    public function verify(Request $request)
    {

        if (!empty($order)) {
            $order->update(['status' => Order::$fail]);
        }

        $toastData = [
            'title' => trans('cart.fail_purchase'),
            'msg' => trans('cart.gateway_error'),
            'status' => 'error'
        ];

        return back()->with(['toast' => $toastData])->withInput();
    }
}
