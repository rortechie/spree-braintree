module SpreeBraintree
  class Engine < Rails::Engine
    engine_name 'spree_braintree'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      require 'active_merchant'
      ActiveMerchant::Billing::BraintreeGateway

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
	
	
    config.after_initialize do |app|
      app.config.spree.payment_methods += [
        Spree::Braintree
      ]
    end
    
    config.to_prepare &method(:activate).to_proc
  end
end