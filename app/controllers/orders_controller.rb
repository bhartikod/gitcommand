class OrdersController < ApplicationController
 
 def checkout
 result = Braintree::Transaction.sale(
      :amount => "2020.00",
      :payment_method_nonce => params[:payment_method_nonce]
    )
    if result.success?
      flash[:notice] = "Payment was successful"
    else
      
      flash[:notice] = result.message
     # redirect_to root_path
    end
  end
end
