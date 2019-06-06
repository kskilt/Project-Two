require 'test_helper'

class ShowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get showings_show_url
    assert_response :success
  end

end
