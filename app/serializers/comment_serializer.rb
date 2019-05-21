class CommentSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating

  belongs_to :profile
end
