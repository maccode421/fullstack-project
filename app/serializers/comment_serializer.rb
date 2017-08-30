class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :photo, :content
  # belongs_to :user
  # belongs_to :post
  # has_one :comment
end
