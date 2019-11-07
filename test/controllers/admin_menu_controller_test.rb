require 'test_helper'

class AdminMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get sales" do
    get admin_menu_sales_url
    assert_response :success
  end

  test "should get orders" do
    get admin_menu_orders_url
    assert_response :success
  end

  test "should get customers" do
    get admin_menu_customers_url
    assert_response :success
  end

  test "should get employees" do
    get admin_menu_employees_url
    assert_response :success
  end

end
