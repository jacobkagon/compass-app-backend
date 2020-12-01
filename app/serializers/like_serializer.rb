class LikeSerializer < ActiveModel::Serializer
  attributes :number, :user_id, :post_id
end
