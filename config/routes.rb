Spree::Core::Engine.routes.draw do
  resources :dotpay_callbacks, :only => [:create]
end
