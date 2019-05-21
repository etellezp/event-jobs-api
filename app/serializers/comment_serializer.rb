class CommentSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating, :profile

  belongs_to :profile
end
