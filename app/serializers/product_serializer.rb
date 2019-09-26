class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :breed,:description,:price,:image,:in_menu
  has_many :reviews
end
