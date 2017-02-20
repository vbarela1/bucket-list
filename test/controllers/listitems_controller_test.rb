require 'test_helper'

class ListitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listitems_index_url
    assert_response :success
  end

  test "should get show" do
    get listitems_show_url
    assert_response :success
  end

  test "should get new" do
    get listitems_new_url
    assert_response :success
  end

  test "should get edit" do
    get listitems_edit_url
    assert_response :success
  end

end
