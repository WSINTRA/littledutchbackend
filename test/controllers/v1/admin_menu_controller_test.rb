require 'test_helper'

class V1::AdminMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get sales" do
    get v1_admin_menu_sales_url
    assert_response :success
  end

  test "should get orders" do
    get v1_admin_menu_orders_url
    assert_response :success
  end

  test "should get customers" do
    get v1_admin_menu_customers_url
    assert_response :success
  end

  test "should get employees" do
    get v1_admin_menu_employees_url
    assert_response :success
  end

end
