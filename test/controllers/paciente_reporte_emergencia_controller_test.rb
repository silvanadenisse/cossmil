require 'test_helper'

class PacienteReporteEmergenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte_emergencium = paciente_reporte_emergencia(:one)
  end

  test "should get index" do
    get paciente_reporte_emergencia_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_emergencium_url
    assert_response :success
  end

  test "should create paciente_reporte_emergencium" do
    assert_difference('PacienteReporteEmergencium.count') do
      post paciente_reporte_emergencia_url, params: { paciente_reporte_emergencium: { diagnostico: @paciente_reporte_emergencium.diagnostico, grado: @paciente_reporte_emergencium.grado, observaciones: @paciente_reporte_emergencium.observaciones, signos_vitales: @paciente_reporte_emergencium.signos_vitales, tratamiento: @paciente_reporte_emergencium.tratamiento } }
    end

    assert_redirected_to paciente_reporte_emergencium_url(PacienteReporteEmergencium.last)
  end

  test "should show paciente_reporte_emergencium" do
    get paciente_reporte_emergencium_url(@paciente_reporte_emergencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_emergencium_url(@paciente_reporte_emergencium)
    assert_response :success
  end

  test "should update paciente_reporte_emergencium" do
    patch paciente_reporte_emergencium_url(@paciente_reporte_emergencium), params: { paciente_reporte_emergencium: { diagnostico: @paciente_reporte_emergencium.diagnostico, grado: @paciente_reporte_emergencium.grado, observaciones: @paciente_reporte_emergencium.observaciones, signos_vitales: @paciente_reporte_emergencium.signos_vitales, tratamiento: @paciente_reporte_emergencium.tratamiento } }
    assert_redirected_to paciente_reporte_emergencium_url(@paciente_reporte_emergencium)
  end

  test "should destroy paciente_reporte_emergencium" do
    assert_difference('PacienteReporteEmergencium.count', -1) do
      delete paciente_reporte_emergencium_url(@paciente_reporte_emergencium)
    end

    assert_redirected_to paciente_reporte_emergencia_url
  end
end
