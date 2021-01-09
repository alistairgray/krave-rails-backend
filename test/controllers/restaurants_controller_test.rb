require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurants_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurants_create_url
    assert_response :success
  end

  test "should get index" do
    get restaurants_index_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get new" do
    get restaurants_new_url
=======
  test "should get show" do
    get restaurants_show_url
    assert_response :success
  end

  test "should get search" do
    get restaurants_search_url
>>>>>>> 5ffb09d0dadb75639e17cfb6504657215727399e
    assert_response :success
  end

  test "should get edit" do
    get restaurants_edit_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get show" do
    get restaurants_show_url
=======
  test "should get update" do
    get restaurants_update_url
    assert_response :success
  end

  test "should get destroy" do
    get restaurants_destroy_url
>>>>>>> 5ffb09d0dadb75639e17cfb6504657215727399e
    assert_response :success
  end

end
