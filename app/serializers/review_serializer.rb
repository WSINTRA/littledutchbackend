class ReviewSerializer < ActiveModel::Serializer
  def username
    object.user.username
  end
  attributes :id, :title, :product_id, :content, :product, :username
  belongs_to :user
  belongs_to :product

end

