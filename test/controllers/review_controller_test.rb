require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get review_new_url
    assert_response :success
  end

  test "should get edit" do
    get review_edit_url
    assert_response :success
  end

  test "should get delete" do
    get review_delete_url
    assert_response :success
  end

end
