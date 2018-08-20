require 'test_helper'

class TransportMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_material = transport_materials(:one)
  end

  test "should get index" do
    get transport_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_transport_material_url
    assert_response :success
  end

  test "should create transport_material" do
    assert_difference('TransportMaterial.count') do
      post transport_materials_url, params: { transport_material: { date_transport_material: @transport_material.date_transport_material, desc_transport_material: @transport_material.desc_transport_material, id_material: @transport_material.id_material, id_recycling_center: @transport_material.id_recycling_center, nam_transport_material: @transport_material.nam_transport_material } }
    end

    assert_redirected_to transport_material_url(TransportMaterial.last)
  end

  test "should show transport_material" do
    get transport_material_url(@transport_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_transport_material_url(@transport_material)
    assert_response :success
  end

  test "should update transport_material" do
    patch transport_material_url(@transport_material), params: { transport_material: { date_transport_material: @transport_material.date_transport_material, desc_transport_material: @transport_material.desc_transport_material, id_material: @transport_material.id_material, id_recycling_center: @transport_material.id_recycling_center, nam_transport_material: @transport_material.nam_transport_material } }
    assert_redirected_to transport_material_url(@transport_material)
  end

  test "should destroy transport_material" do
    assert_difference('TransportMaterial.count', -1) do
      delete transport_material_url(@transport_material)
    end

    assert_redirected_to transport_materials_url
  end
end
