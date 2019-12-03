class HomeController < ApplicationController
  before_action :authenticate_user!
	#   added comment
  require "rubygems"
  require "braintree"

gateway = Braintree::Gateway.new(
  :environment => "sandbox",
  :merchant_id => "rr5znhwwvd7nh3xs",
  :public_key => "hdbf8fngdm47xv6f",
  :private_key => "6fbad75695c175a835de33bf8ab98a5a",
)

  def index
  	 @client_token = Braintree::ClientToken.generate
  end

end
