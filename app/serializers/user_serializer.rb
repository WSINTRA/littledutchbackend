class UserSerializer < ActiveModel::Serializer

  def product_for_review
      products_available = []
      object.orders.each do |x| products_available << x.products end
      products_available.flatten.uniq!
  end

  attributes :username, :avatar, :address, :state, :city, :email, :staff, :zip, :id, :product_for_review
  has_many :reviews
  has_many :orders
  has_one :cart


end
