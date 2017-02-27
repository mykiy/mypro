require 'test_helper'

class AttachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attaches_index_url
    assert_response :success
  end

  test "should get new" do
    get attaches_new_url
    assert_response :success
  end

  test "should get create" do
    get attaches_create_url
    assert_response :success
  end

  test "should get destroy" do
    get attaches_destroy_url
    assert_response :success
  end

end
