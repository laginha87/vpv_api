require 'test_helper'

class FireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fire_index_url
    assert_response :success
  end

end
