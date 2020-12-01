class LikeSerializer < ActiveModel::Serializer
  attributes :id, :number, :user_id, :post_id
end
