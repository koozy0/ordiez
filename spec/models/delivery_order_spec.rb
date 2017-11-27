require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do
  subject { FactoryBot.create(:delivery_order) }

  context 'validations' do
    it do
      should validate_presence_of(:serving_datetime)
    end
  end

  it "creates an order_id on create"do
    @delivery_order = FactoryBot.create(:delivery_order)
    expect(@delivery_order.order_id).to eq("GO%.5d" % @delivery_order.id)
  end

  context 'associations' do
    it do
      should have_many(:order_items)
    end
  end
end
