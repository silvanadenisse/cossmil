require 'test_helper'

class CargaLaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_laboratorio = carga_laboratorios(:one)
  end

  test "should get index" do
    get carga_laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_laboratorio_url
    assert_response :success
  end

  test "should create carga_laboratorio" do
    assert_difference('CargaLaboratorio.count') do
      post carga_laboratorios_url, params: { carga_laboratorio: { anho: @carga_laboratorio.anho, mes: @carga_laboratorio.mes } }
    end

    assert_redirected_to carga_laboratorio_url(CargaLaboratorio.last)
  end

  test "should show carga_laboratorio" do
    get carga_laboratorio_url(@carga_laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_laboratorio_url(@carga_laboratorio)
    assert_response :success
  end

  test "should update carga_laboratorio" do
    patch carga_laboratorio_url(@carga_laboratorio), params: { carga_laboratorio: { anho: @carga_laboratorio.anho, mes: @carga_laboratorio.mes } }
    assert_redirected_to carga_laboratorio_url(@carga_laboratorio)
  end

  test "should destroy carga_laboratorio" do
    assert_difference('CargaLaboratorio.count', -1) do
      delete carga_laboratorio_url(@carga_laboratorio)
    end

    assert_redirected_to carga_laboratorios_url
  end
end
