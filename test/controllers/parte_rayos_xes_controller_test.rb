require 'test_helper'

class ParteRayosXesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_rayos_x = parte_rayos_xes(:one)
  end

  test "should get index" do
    get parte_rayos_xes_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_rayos_x_url
    assert_response :success
  end

  test "should create parte_rayos_x" do
    assert_difference('ParteRayosX.count') do
      post parte_rayos_xes_url, params: { parte_rayos_x: { mes: @parte_rayos_x.mes, string: @parte_rayos_x.string } }
    end

    assert_redirected_to parte_rayos_x_url(ParteRayosX.last)
  end

  test "should show parte_rayos_x" do
    get parte_rayos_x_url(@parte_rayos_x)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_rayos_x_url(@parte_rayos_x)
    assert_response :success
  end

  test "should update parte_rayos_x" do
    patch parte_rayos_x_url(@parte_rayos_x), params: { parte_rayos_x: { mes: @parte_rayos_x.mes, string: @parte_rayos_x.string } }
    assert_redirected_to parte_rayos_x_url(@parte_rayos_x)
  end

  test "should destroy parte_rayos_x" do
    assert_difference('ParteRayosX.count', -1) do
      delete parte_rayos_x_url(@parte_rayos_x)
    end

    assert_redirected_to parte_rayos_xes_url
  end
end
