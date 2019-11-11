class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products, :created_at, :total 
  has_many :products
end
