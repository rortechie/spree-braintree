SpreeBraintree
==================

Welcome to RoRtechie.com
This gem provides very simple integration of BrainTree with Spree.
Include the gem into your Gemfile as follows

gem 'spree_braintree', :git => 'git://github.com/rortechie/spree-braintree.git'

Then

bundle install

To complete the implementation

Register or login with test account https://sandbox.braintreegateway.com/

Now login to spree as admin and navigate to admin > Configuration > Payment Methods > New payment method
You should see Spree::Braintree within dropdown for provider.

Select the same, it shall now ask for Merchant Id, Public Key and Private Key.
Enter these as per your account from Braintree

Copyright (c) 2011 [Jay @ Rortechie], released under the New BSD License
