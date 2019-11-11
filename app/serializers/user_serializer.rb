class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :address, :state, :city, :email, :staff, :zip, :id
  has_many :reviews
  has_one :cart
end
