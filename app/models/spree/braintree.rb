class Spree::Braintree < Spree::Gateway
	preference :merchant_id, :string
	preference :private_key, :string
	preference :public_key, :string

  def provider_class 
    ActiveMerchant::Billing::BraintreeGateway
  end
 
end

#pub: skcxn589xb9vjw5z
#Private:
#pfx6mtd3g9m95w5h
#Merchant ID:
#3h2x5gz8p9vjb99r