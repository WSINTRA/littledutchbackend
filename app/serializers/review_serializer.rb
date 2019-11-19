class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :product_id, :content
  belongs_to :user
  belongs_to :product
end
