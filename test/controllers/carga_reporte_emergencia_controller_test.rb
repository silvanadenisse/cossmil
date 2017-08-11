require 'test_helper'

class CargaReporteEmergenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_reporte_emergencium = carga_reporte_emergencia(:one)
  end

  test "should get index" do
    get carga_reporte_emergencia_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_reporte_emergencium_url
    assert_response :success
  end

  test "should create carga_reporte_emergencium" do
    assert_difference('CargaReporteEmergencium.count') do
      post carga_reporte_emergencia_url, params: { carga_reporte_emergencium: { consulta_hora: @carga_reporte_emergencium.consulta_hora, dias_trabajados: @carga_reporte_emergencium.dias_trabajados, horas_trabajadas: @carga_reporte_emergencium.horas_trabajadas, pacientes_dias: @carga_reporte_emergencium.pacientes_dias, total: @carga_reporte_emergencium.total } }
    end

    assert_redirected_to carga_reporte_emergencium_url(CargaReporteEmergencium.last)
  end

  test "should show carga_reporte_emergencium" do
    get carga_reporte_emergencium_url(@carga_reporte_emergencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_reporte_emergencium_url(@carga_reporte_emergencium)
    assert_response :success
  end

  test "should update carga_reporte_emergencium" do
    patch carga_reporte_emergencium_url(@carga_reporte_emergencium), params: { carga_reporte_emergencium: { consulta_hora: @carga_reporte_emergencium.consulta_hora, dias_trabajados: @carga_reporte_emergencium.dias_trabajados, horas_trabajadas: @carga_reporte_emergencium.horas_trabajadas, pacientes_dias: @carga_reporte_emergencium.pacientes_dias, total: @carga_reporte_emergencium.total } }
    assert_redirected_to carga_reporte_emergencium_url(@carga_reporte_emergencium)
  end

  test "should destroy carga_reporte_emergencium" do
    assert_difference('CargaReporteEmergencium.count', -1) do
      delete carga_reporte_emergencium_url(@carga_reporte_emergencium)
    end

    assert_redirected_to carga_reporte_emergencia_url
  end
end
