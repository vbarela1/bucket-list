require 'test_helper'

class BucketlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bucketlists_index_url
    assert_response :success
  end

  test "should get show" do
    get bucketlists_show_url
    assert_response :success
  end

  test "should get new" do
    get bucketlists_new_url
    assert_response :success
  end

  test "should get edit" do
    get bucketlists_edit_url
    assert_response :success
  end

end
