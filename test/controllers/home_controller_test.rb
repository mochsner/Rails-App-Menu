require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Rails App Menu" 
  end

  test "should get index" do
    get home_index_url
    assert_response :success
    assert_select "title", "Index | #{@base_title}"
  end

  test "should get login" do
    get home_login_url
    assert_response :success
    assert_select "title", "Login | #{@base_title}"
  end
  

end
