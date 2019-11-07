class V1::AdminMenuController < ApplicationController
  def sales
  end

  def orders
    @all_orders = Order.all
    render json: @all_orders
  end

  def customers
  	@all_users = User.all
  	render json: @all_users
  end

  def employees
  end
end
