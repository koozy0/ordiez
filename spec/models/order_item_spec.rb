require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  subject { FactoryBot.create(:order_item) }

  context 'validations' do
    it do
      should validate_presence_of(:meal_id)
      should validate_presence_of(:delivery_order_id)
      should validate_presence_of(:quantity)
      should validate_presence_of(:unit_price)
    end
  end

  context 'associations' do
    it do
      should belong_to(:meal)
      should belong_to(:delivery_order)
    end
  end
end
