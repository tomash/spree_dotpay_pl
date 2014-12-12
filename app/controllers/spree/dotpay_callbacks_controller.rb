module Spree
  class DotpayCallbacksController < BaseController
    protect_from_forgery :except => [:create]
    skip_before_filter :restriction_access

    def create
      # TODO: process the callback from Dotpay
      
      render :nothing => true
    end
  end
end
