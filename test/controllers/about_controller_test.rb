require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get about_page_url
    assert_response :success
  end

end
