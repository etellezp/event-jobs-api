class Profile < ApplicationRecord
  has_many :comments, dependent: :destroy  

  validates :about, :rate, :location, :name, :skill, presence: true

end
