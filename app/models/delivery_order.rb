class DeliveryOrder < ApplicationRecord
  # associations
  has_many :order_items
  # validations
  validates :serving_datetime, presence: true
  # validates :order_id, uniqueness: true

  # calling after_create hook
  after_create :create_order_id

  # create order_id and saving
  def create_order_id
    self.order_id = "GO%.5d" % self.id
    self.save
  end

  # formatting information to return
  def format_order
    order_id = self.order_id
    delivery_time_start = self.serving_datetime.strftime('%I:%M')
    delivery_time_end = (self.serving_datetime + 30*60).strftime('%I:%M%p')
    delivery_time = delivery_time_start + "-" + delivery_time_end
    delivery_date = self.serving_datetime.to_date
    # return object
    {
      order_id: order_id,
      delivery_date: delivery_date,
      delivery_time: delivery_time
    }
  end
end
