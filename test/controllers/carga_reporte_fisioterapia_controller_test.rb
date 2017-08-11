require 'test_helper'

class CargaReporteFisioterapiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_reporte_fisioterapium = carga_reporte_fisioterapia(:one)
  end

  test "should get index" do
    get carga_reporte_fisioterapia_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_reporte_fisioterapium_url
    assert_response :success
  end

  test "should create carga_reporte_fisioterapium" do
    assert_difference('CargaReporteFisioterapium.count') do
      post carga_reporte_fisioterapia_url, params: { carga_reporte_fisioterapium: { consulta_hora: @carga_reporte_fisioterapium.consulta_hora, dias_trabajados: @carga_reporte_fisioterapium.dias_trabajados, horas_trabajadas: @carga_reporte_fisioterapium.horas_trabajadas, pacientes_dias: @carga_reporte_fisioterapium.pacientes_dias, total: @carga_reporte_fisioterapium.total } }
    end

    assert_redirected_to carga_reporte_fisioterapium_url(CargaReporteFisioterapium.last)
  end

  test "should show carga_reporte_fisioterapium" do
    get carga_reporte_fisioterapium_url(@carga_reporte_fisioterapium)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_reporte_fisioterapium_url(@carga_reporte_fisioterapium)
    assert_response :success
  end

  test "should update carga_reporte_fisioterapium" do
    patch carga_reporte_fisioterapium_url(@carga_reporte_fisioterapium), params: { carga_reporte_fisioterapium: { consulta_hora: @carga_reporte_fisioterapium.consulta_hora, dias_trabajados: @carga_reporte_fisioterapium.dias_trabajados, horas_trabajadas: @carga_reporte_fisioterapium.horas_trabajadas, pacientes_dias: @carga_reporte_fisioterapium.pacientes_dias, total: @carga_reporte_fisioterapium.total } }
    assert_redirected_to carga_reporte_fisioterapium_url(@carga_reporte_fisioterapium)
  end

  test "should destroy carga_reporte_fisioterapium" do
    assert_difference('CargaReporteFisioterapium.count', -1) do
      delete carga_reporte_fisioterapium_url(@carga_reporte_fisioterapium)
    end

    assert_redirected_to carga_reporte_fisioterapia_url
  end
end
