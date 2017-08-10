require 'test_helper'

class CargaReporteDentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_reporte_dental = carga_reporte_dentals(:one)
  end

  test "should get index" do
    get carga_reporte_dentals_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_reporte_dental_url
    assert_response :success
  end

  test "should create carga_reporte_dental" do
    assert_difference('CargaReporteDental.count') do
      post carga_reporte_dentals_url, params: { carga_reporte_dental: { consulta_hora: @carga_reporte_dental.consulta_hora, consultas_programadas: @carga_reporte_dental.consultas_programadas, dias_trabajados: @carga_reporte_dental.dias_trabajados, horas_trabajadas: @carga_reporte_dental.horas_trabajadas, hrs_trabajadas: @carga_reporte_dental.hrs_trabajadas, observaciones: @carga_reporte_dental.observaciones, pacientes_dias: @carga_reporte_dental.pacientes_dias, total: @carga_reporte_dental.total } }
    end

    assert_redirected_to carga_reporte_dental_url(CargaReporteDental.last)
  end

  test "should show carga_reporte_dental" do
    get carga_reporte_dental_url(@carga_reporte_dental)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_reporte_dental_url(@carga_reporte_dental)
    assert_response :success
  end

  test "should update carga_reporte_dental" do
    patch carga_reporte_dental_url(@carga_reporte_dental), params: { carga_reporte_dental: { consulta_hora: @carga_reporte_dental.consulta_hora, consultas_programadas: @carga_reporte_dental.consultas_programadas, dias_trabajados: @carga_reporte_dental.dias_trabajados, horas_trabajadas: @carga_reporte_dental.horas_trabajadas, hrs_trabajadas: @carga_reporte_dental.hrs_trabajadas, observaciones: @carga_reporte_dental.observaciones, pacientes_dias: @carga_reporte_dental.pacientes_dias, total: @carga_reporte_dental.total } }
    assert_redirected_to carga_reporte_dental_url(@carga_reporte_dental)
  end

  test "should destroy carga_reporte_dental" do
    assert_difference('CargaReporteDental.count', -1) do
      delete carga_reporte_dental_url(@carga_reporte_dental)
    end

    assert_redirected_to carga_reporte_dentals_url
  end
end
