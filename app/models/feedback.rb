class Feedback < ApplicationRecord
  belongs_to :ratable, polymorphic: true

  def format
    ratable_id = self.ratable_id
    ratable_type = self.ratable_type
    rating = self.rating
    comment = self.comment

    {
      ratable_id: ratable_id,
      ratable_type: ratable_type,
      rating: rating,
      comment: comment
    }
  end
end
