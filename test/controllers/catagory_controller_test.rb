require "test_helper"

class CatagoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catagory_index_url
    assert_response :success
  end

  test "should get new" do
    get catagory_new_url
    assert_response :success
  end

  test "should get create" do
    get catagory_create_url
    assert_response :success
  end
end
