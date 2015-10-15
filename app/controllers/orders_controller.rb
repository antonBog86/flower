class OrdersController < ApplicationController
  def show
    @order = Order.where(token: params[:token] || session[:order_token]).first
    @plants = @order ? @order.plants : Plant.where(id: session[:order])
  end

  def new
    @order = Order.new
  end

  def create
    params[:order][:ordered_plants_attributes] = session[:order].each.map { |id| { plant_id: id} }
    @order = Order.new(permitted_order)

    if @order.save
      redirect_to action: :show, token: @order.token
      reset_session
    else
      render :new
    end
  end

  def remove_plant_from
    # session[:order] -= params[:ids] if session[:order]
  end

  private

  def permitted_order
    params.require(:order).permit(:orderer_name, :orderer_email, :orderer_comment, ordered_plants_attributes: [:plant_id, :order_id])
  end

end
