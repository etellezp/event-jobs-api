class Comment < ApplicationRecord
  belongs_to :profile

  validates :review, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
  
end
