class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :product_id, :content, :product
  belongs_to :user
  belongs_to :product
end
