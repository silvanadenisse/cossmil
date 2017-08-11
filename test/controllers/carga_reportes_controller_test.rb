require 'test_helper'

class CargaReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_reporte = carga_reportes(:one)
  end

  test "should get index" do
    get carga_reportes_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_reporte_url
    assert_response :success
  end

  test "should create carga_reporte" do
    assert_difference('CargaReporte.count') do
      post carga_reportes_url, params: { carga_reporte: { carga_horaria_cons_ext: @carga_reporte.carga_horaria_cons_ext, carga_horaria_contrato: @carga_reporte.carga_horaria_contrato, consultas_ofertadas: @carga_reporte.consultas_ofertadas, consultas_programadas: @carga_reporte.consultas_programadas, dias_trabajados: @carga_reporte.dias_trabajados, horas_trabajadas: @carga_reporte.horas_trabajadas, productividad: @carga_reporte.productividad, rendimiento_medico_dia: @carga_reporte.rendimiento_medico_dia, rendimiento_medico_hora: @carga_reporte.rendimiento_medico_hora, rendimiento_porcentual: @carga_reporte.rendimiento_porcentual, total_especialidad: @carga_reporte.total_especialidad } }
    end

    assert_redirected_to carga_reporte_url(CargaReporte.last)
  end

  test "should show carga_reporte" do
    get carga_reporte_url(@carga_reporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_reporte_url(@carga_reporte)
    assert_response :success
  end

  test "should update carga_reporte" do
    patch carga_reporte_url(@carga_reporte), params: { carga_reporte: { carga_horaria_cons_ext: @carga_reporte.carga_horaria_cons_ext, carga_horaria_contrato: @carga_reporte.carga_horaria_contrato, consultas_ofertadas: @carga_reporte.consultas_ofertadas, consultas_programadas: @carga_reporte.consultas_programadas, dias_trabajados: @carga_reporte.dias_trabajados, horas_trabajadas: @carga_reporte.horas_trabajadas, productividad: @carga_reporte.productividad, rendimiento_medico_dia: @carga_reporte.rendimiento_medico_dia, rendimiento_medico_hora: @carga_reporte.rendimiento_medico_hora, rendimiento_porcentual: @carga_reporte.rendimiento_porcentual, total_especialidad: @carga_reporte.total_especialidad } }
    assert_redirected_to carga_reporte_url(@carga_reporte)
  end

  test "should destroy carga_reporte" do
    assert_difference('CargaReporte.count', -1) do
      delete carga_reporte_url(@carga_reporte)
    end

    assert_redirected_to carga_reportes_url
  end
end
