require 'test_helper'

class GuestlistsImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get guestlists_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get guestlists_imports_create_url
    assert_response :success
  end

end
