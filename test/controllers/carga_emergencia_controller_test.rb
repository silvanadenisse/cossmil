require 'test_helper'

class CargaEmergenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_emergencium = carga_emergencia(:one)
  end

  test "should get index" do
    get carga_emergencia_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_emergencium_url
    assert_response :success
  end

  test "should create carga_emergencium" do
    assert_difference('CargaEmergencium.count') do
      post carga_emergencia_url, params: { carga_emergencium: { anho: @carga_emergencium.anho, dias_habiles: @carga_emergencium.dias_habiles, mes: @carga_emergencium.mes } }
    end

    assert_redirected_to carga_emergencium_url(CargaEmergencium.last)
  end

  test "should show carga_emergencium" do
    get carga_emergencium_url(@carga_emergencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_emergencium_url(@carga_emergencium)
    assert_response :success
  end

  test "should update carga_emergencium" do
    patch carga_emergencium_url(@carga_emergencium), params: { carga_emergencium: { anho: @carga_emergencium.anho, dias_habiles: @carga_emergencium.dias_habiles, mes: @carga_emergencium.mes } }
    assert_redirected_to carga_emergencium_url(@carga_emergencium)
  end

  test "should destroy carga_emergencium" do
    assert_difference('CargaEmergencium.count', -1) do
      delete carga_emergencium_url(@carga_emergencium)
    end

    assert_redirected_to carga_emergencia_url
  end
end
