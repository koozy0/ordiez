class DeliveryOrder < ApplicationRecord
  has_many :order_items

  # calling after_create hook
  after_create :create_order_id
  # create order_id and saving
  def create_order_id
    self.order_id = "GO%.5d" % self.id
    self.save
  end
end
