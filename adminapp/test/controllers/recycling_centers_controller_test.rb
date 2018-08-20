require 'test_helper'

class RecyclingCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recycling_center = recycling_centers(:one)
  end

  test "should get index" do
    get recycling_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_recycling_center_url
    assert_response :success
  end

  test "should create recycling_center" do
    assert_difference('RecyclingCenter.count') do
      post recycling_centers_url, params: { recycling_center: { address_recycling_center: @recycling_center.address_recycling_center, desc_recycling_center: @recycling_center.desc_recycling_center, nam_recycling_center: @recycling_center.nam_recycling_center, tel_recycling_center: @recycling_center.tel_recycling_center, web_recycling_center: @recycling_center.web_recycling_center } }
    end

    assert_redirected_to recycling_center_url(RecyclingCenter.last)
  end

  test "should show recycling_center" do
    get recycling_center_url(@recycling_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_recycling_center_url(@recycling_center)
    assert_response :success
  end

  test "should update recycling_center" do
    patch recycling_center_url(@recycling_center), params: { recycling_center: { address_recycling_center: @recycling_center.address_recycling_center, desc_recycling_center: @recycling_center.desc_recycling_center, nam_recycling_center: @recycling_center.nam_recycling_center, tel_recycling_center: @recycling_center.tel_recycling_center, web_recycling_center: @recycling_center.web_recycling_center } }
    assert_redirected_to recycling_center_url(@recycling_center)
  end

  test "should destroy recycling_center" do
    assert_difference('RecyclingCenter.count', -1) do
      delete recycling_center_url(@recycling_center)
    end

    assert_redirected_to recycling_centers_url
  end
end
