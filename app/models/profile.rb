class Profile < ApplicationRecord

  validates :about, :rate, :location, :name, :skill, presence: true

end
