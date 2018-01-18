require 'test_helper'
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Is It Open?"
  end
  test "should get home" do
    get "/"
    assert_response :success
    assert_select "title", "Find stores open on holidays | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end


end
