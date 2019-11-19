require 'test_helper'

class V1::ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get v1_review_new_url
    assert_response :success
  end

  test "should get edit" do
    get v1_review_edit_url
    assert_response :success
  end

  test "should get delete" do
    get v1_review_delete_url
    assert_response :success
  end

end
