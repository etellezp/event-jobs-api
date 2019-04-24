class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :skill, :about, :location, :rate

  has_many :comments
end
