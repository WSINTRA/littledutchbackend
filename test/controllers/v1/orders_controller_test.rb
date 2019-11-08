require 'test_helper'

class V1::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get newOrder" do
    get v1_orders_newOrder_url
    assert_response :success
  end

  test "should get allOrders" do
    get v1_orders_allOrders_url
    assert_response :success
  end

end
