require 'spec_helper'

describe Spree::BillingIntegration::DotpayPl do

  let(:dotpaypl) { Spree::BillingIntegration::DotpayPl.new }

  it "has required fields" do
    ["dotpay_account_id", "urlc_host", "success_url", "dotpay_url", "currency_code"].each do |key|
      dotpaypl.send("preferred_#{key}=", 'test')
      expect(dotpaypl.send("preferred_#{key}")).to eq 'test'
    end
  end

  it "be compatible with spree gateway API" do
    expect(dotpaypl.payment_profiles_supported?).to eq false
  end

end
