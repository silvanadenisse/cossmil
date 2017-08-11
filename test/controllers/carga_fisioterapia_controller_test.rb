require 'test_helper'

class CargaFisioterapiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_fisioterapium = carga_fisioterapia(:one)
  end

  test "should get index" do
    get carga_fisioterapia_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_fisioterapium_url
    assert_response :success
  end

  test "should create carga_fisioterapium" do
    assert_difference('CargaFisioterapium.count') do
      post carga_fisioterapia_url, params: { carga_fisioterapium: { anho: @carga_fisioterapium.anho, dias_habiles: @carga_fisioterapium.dias_habiles, mes: @carga_fisioterapium.mes } }
    end

    assert_redirected_to carga_fisioterapium_url(CargaFisioterapium.last)
  end

  test "should show carga_fisioterapium" do
    get carga_fisioterapium_url(@carga_fisioterapium)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_fisioterapium_url(@carga_fisioterapium)
    assert_response :success
  end

  test "should update carga_fisioterapium" do
    patch carga_fisioterapium_url(@carga_fisioterapium), params: { carga_fisioterapium: { anho: @carga_fisioterapium.anho, dias_habiles: @carga_fisioterapium.dias_habiles, mes: @carga_fisioterapium.mes } }
    assert_redirected_to carga_fisioterapium_url(@carga_fisioterapium)
  end

  test "should destroy carga_fisioterapium" do
    assert_difference('CargaFisioterapium.count', -1) do
      delete carga_fisioterapium_url(@carga_fisioterapium)
    end

    assert_redirected_to carga_fisioterapia_url
  end
end
