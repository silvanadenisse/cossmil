require 'test_helper'

class CargaParteDiariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_parte_diario = carga_parte_diarios(:one)
  end

  test "should get index" do
    get carga_parte_diarios_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_parte_diario_url
    assert_response :success
  end

  test "should create carga_parte_diario" do
    assert_difference('CargaParteDiario.count') do
      post carga_parte_diarios_url, params: { carga_parte_diario: { anho: @carga_parte_diario.anho, dias_habiles: @carga_parte_diario.dias_habiles, mes: @carga_parte_diario.mes } }
    end

    assert_redirected_to carga_parte_diario_url(CargaParteDiario.last)
  end

  test "should show carga_parte_diario" do
    get carga_parte_diario_url(@carga_parte_diario)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_parte_diario_url(@carga_parte_diario)
    assert_response :success
  end

  test "should update carga_parte_diario" do
    patch carga_parte_diario_url(@carga_parte_diario), params: { carga_parte_diario: { anho: @carga_parte_diario.anho, dias_habiles: @carga_parte_diario.dias_habiles, mes: @carga_parte_diario.mes } }
    assert_redirected_to carga_parte_diario_url(@carga_parte_diario)
  end

  test "should destroy carga_parte_diario" do
    assert_difference('CargaParteDiario.count', -1) do
      delete carga_parte_diario_url(@carga_parte_diario)
    end

    assert_redirected_to carga_parte_diarios_url
  end
end
