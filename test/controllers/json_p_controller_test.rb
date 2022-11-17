require "test_helper"

class JsonPControllerTest < ActionDispatch::IntegrationTest
  test "should get parse" do
    get json_p_parse_url
    assert_response :success
  end
end
