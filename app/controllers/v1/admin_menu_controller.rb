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
    @new_employee = User.create(employee_params)
    render json: @new_employee
  end

  private 

  def employee_params
    params.require(:user).permit(:username, :password, :address, :state, :city, :email, :zip, :staff)
  end

end
