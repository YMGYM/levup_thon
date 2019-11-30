require 'test_helper'

class FoodControllerTest < ActionDispatch::IntegrationTest
  test "should get rank" do
    get food_rank_url
    assert_response :success
  end

  test "should get list" do
    get food_list_url
    assert_response :success
  end

  test "should get detail" do
    get food_detail_url
    assert_response :success
  end

end
