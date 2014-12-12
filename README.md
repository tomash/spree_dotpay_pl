# Spree - Dotpay.pl

A [Spree](http://spreecommerce.com) extension to allow payments using Dotpay.pl payment service.

[![Build Status](https://secure.travis-ci.org/tomash/spree_dotpay_pl.png)](http://travis-ci.org/tomash/spree_dotpay_pl)

## Installation 

Add to your Spree application Gemfile.

    gem "spree_dotpay_pl", :git => "git://github.com/tomash/spree_dotpay_pl.git"

Run the install rake task to copy migrations (create dotpay_payment_notifications table)

    rails generate spree_dotpay_pl:install

Configure, run, test.


## Configuration

Go to Spree backend (admin panel). Add a new Payment Method. Choose `Spree::BillingIntegration::DotpayPl` as provider.

Take a while to inspect configuration options and their defaults (suited for development). The following configuration options (keys) can be set:

    dotpay_account_id # Dotpay id of store (merchant, business)
    urlc_host         # host which Dotpay will use for sending callbacks (usually the same host as store itself) 
    success_url       # url the customer is redirected to after successfully completing payment
    currency_code     # default PLN
    dotpay_url        # dotpay url for payments page, default is https://ssl.dotpay.pl
                      # use https://ssl.dotpay.eu for english version of payment page

Only the first three need to be set up in order to get running. 

## Testing

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec


## TODO

* Complete README from installation to accepting payment
* Less invasive front-end code
* Better test suite
