require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe 'GET #orders' do
    it 'renders success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns @orders and formats them' do
      # generate delivery orders
      unformatted_delivery_order = FactoryBot.create_list(:delivery_order, 3)
      # format them before checking
      delivery_order = []
      unformatted_delivery_order.each do |order|
        delivery_order.push(order.format_order)
      end

      get :index
      expect(assigns(:orders).to_a).to eq(delivery_order)
    end
  end

  describe 'GET #orders/:order_id' do
    it 'renders a JSON based on order_id' do
      delivery_order = FactoryBot.create(:delivery_order)
      get :show, params: { id: delivery_order.order_id }
      expect(response).to have_http_status(:success)
    end
  end
end
