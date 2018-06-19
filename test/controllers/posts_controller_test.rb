require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "redirects to sign in page if not signed in" do
    get new_post_path
    assert_redirected_to new_user_session_path
  end

end
