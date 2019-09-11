class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :address, :state, :city, :email, :staff
  has_many :reviews
  has_many :orders
  has_one :cart
end
