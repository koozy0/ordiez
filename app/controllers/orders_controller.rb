class OrdersController < ApplicationController
  def index
    @orders = []
    DeliveryOrder.all.each do |delivery_order|
      @orders.push(delivery_order.format)
    end

    render json: {
      orders: @orders
    }
  end

  def show
    # get unformatted order item and format
    @unformatted_order = DeliveryOrder.find_by order_id: params[:id]
    @order = @unformatted_order.format

    # get list of unformatted order items and format
    @order_items = []
    @unformatted_order_items = OrderItem.where(delivery_order_id: @unformatted_order.id)
    @unformatted_order_items.each do |item|
      @order_items.push(item.format)
    end

    # add formatted order items list to order
    @order["order_items"] = @order_items

    # render json
    render json: {
      order: @order
    }
  end
end
