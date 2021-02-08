require "test_helper"

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get put" do
    get author_put_url
    assert_response :success
  end
end
