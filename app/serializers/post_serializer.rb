class PostSerializer < ActiveModel::Serializer
  attributes  :id, :likes, :image, :caption, :user_id, :comments

end
