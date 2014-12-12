class Spree::BillingIntegration::DotpayPl < Spree::BillingIntegration

  preference :dotpay_account_id, :string
  preference :urlc_host, :string
  preference :success_url, :string
  preference :currency_code, :string, :default => "PLN"
  preference :dotpay_url, :string, :default => 'https://ssl.dotpay.pl'


  def payment_profiles_supported?
    false
  end

end
