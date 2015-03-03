require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get builder" do
    get :builder
    assert_response :success
  end

end
