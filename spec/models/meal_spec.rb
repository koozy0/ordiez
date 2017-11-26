require 'rails_helper'

RSpec.describe Meal, type: :model do
  subject { FactoryBot.create(:meal) }

  context 'validations' do
    it do
      should validate_presence_of(:name)
      should validate_presence_of(:description)
      end
    end

  context 'associations' do
    it do
      should have_many(:order_items)
    end
  end
end
