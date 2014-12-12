Spree::Order.class_eval do
  has_many :dotpay_callbacks

  def payable_via_dotpay?
    !!self.class.dotpay_payment_method
  end

  def self.dotpay_payment_method
    Spree::PaymentMethod.select{ |pm| pm.name.downcase =~ /dotpay/}.first
  end
end
