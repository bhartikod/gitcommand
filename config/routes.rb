Rails.application.routes.draw do
  get 'home/index'
  
  post 'home/index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   root to: "home#index"
   post "/checkout", to: "orders#checkout"
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
