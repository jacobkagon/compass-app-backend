class PostSerializer < ActiveModel::Serializer
  attributes  :id, :likes, :image, :caption, :user_id, :comments, :user, :created_at

end
