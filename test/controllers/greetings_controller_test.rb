require "test_helper"

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get greetings_hello_url
    assert_response :success
  end
end
