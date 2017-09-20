require 'test_helper'

class CargaReporteLaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_reporte_laboratorio = carga_reporte_laboratorios(:one)
  end

  test "should get index" do
    get carga_reporte_laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_reporte_laboratorio_url
    assert_response :success
  end

  test "should create carga_reporte_laboratorio" do
    assert_difference('CargaReporteLaboratorio.count') do
      post carga_reporte_laboratorios_url, params: { carga_reporte_laboratorio: { total: @carga_reporte_laboratorio.total, total_examenes: @carga_reporte_laboratorio.total_examenes } }
    end

    assert_redirected_to carga_reporte_laboratorio_url(CargaReporteLaboratorio.last)
  end

  test "should show carga_reporte_laboratorio" do
    get carga_reporte_laboratorio_url(@carga_reporte_laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_reporte_laboratorio_url(@carga_reporte_laboratorio)
    assert_response :success
  end

  test "should update carga_reporte_laboratorio" do
    patch carga_reporte_laboratorio_url(@carga_reporte_laboratorio), params: { carga_reporte_laboratorio: { total: @carga_reporte_laboratorio.total, total_examenes: @carga_reporte_laboratorio.total_examenes } }
    assert_redirected_to carga_reporte_laboratorio_url(@carga_reporte_laboratorio)
  end

  test "should destroy carga_reporte_laboratorio" do
    assert_difference('CargaReporteLaboratorio.count', -1) do
      delete carga_reporte_laboratorio_url(@carga_reporte_laboratorio)
    end

    assert_redirected_to carga_reporte_laboratorios_url
  end
end
