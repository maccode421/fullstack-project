class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :photo, :catch_date, :content, :post_id
end
