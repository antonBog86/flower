class OrdersController < ApplicationController
  def show
    @order = Order.where(token: params[:token] || session[:order_token]).first
  end
end
