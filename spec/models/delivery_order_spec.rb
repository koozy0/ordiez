require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do
  subject { FactoryBot.create(:delivery_order) }

  context 'validations' do
    it do
      should validate_presence_of(:order_id)
      should validate_presence_of(:serving_datetime)
      should validate_uniqueness_of(:order_id)
    end
  end

  context 'associations' do
    it do
      should have_many(:order_items)
    end
  end
end
