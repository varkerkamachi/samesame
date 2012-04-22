require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  
  test "should get index" do
    #assert_routing '/', :controller => 'home', :action => 'index'
    get :index
    assert_response :success
  end
  
  context "valid page layout" do
    should "load the application template" do
      get :index
      assert_template(expected = 'application')
    end
  end

end
