class FeedbackController < ApplicationController
  def index
    @feedbacks = []
    @delivery_order = DeliveryOrder.find_by order_id: params[:order_id]

    @feedbacks.push @delivery_order.feedback.format if @delivery_order.feedback

    @delivery_order.order_items.each do |item|
      @feedbacks.push item.feedback.format if item.feedback
    end

    render json: {
      feedbacks: @feedbacks
    }
  end

  def create
  end

  def new
  end
end
