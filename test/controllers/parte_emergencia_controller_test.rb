require 'test_helper'

class ParteEmergenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_emergencium = parte_emergencia(:one)
  end

  test "should get index" do
    get parte_emergencia_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_emergencium_url
    assert_response :success
  end

  test "should create parte_emergencium" do
    assert_difference('ParteEmergencium.count') do
      post parte_emergencia_url, params: { parte_emergencium: { enfermera: @parte_emergencium.enfermera, mes: @parte_emergencium.mes } }
    end

    assert_redirected_to parte_emergencium_url(ParteEmergencium.last)
  end

  test "should show parte_emergencium" do
    get parte_emergencium_url(@parte_emergencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_emergencium_url(@parte_emergencium)
    assert_response :success
  end

  test "should update parte_emergencium" do
    patch parte_emergencium_url(@parte_emergencium), params: { parte_emergencium: { enfermera: @parte_emergencium.enfermera, mes: @parte_emergencium.mes } }
    assert_redirected_to parte_emergencium_url(@parte_emergencium)
  end

  test "should destroy parte_emergencium" do
    assert_difference('ParteEmergencium.count', -1) do
      delete parte_emergencium_url(@parte_emergencium)
    end

    assert_redirected_to parte_emergencia_url
  end
end
