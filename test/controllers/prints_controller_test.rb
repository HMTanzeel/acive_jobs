require "test_helper"

class PrintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prints_index_url
    assert_response :success
  end
end
