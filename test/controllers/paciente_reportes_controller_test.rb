require 'test_helper'

class PacienteReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte = paciente_reportes(:one)
  end

  test "should get index" do
    get paciente_reportes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_url
    assert_response :success
  end

  test "should create paciente_reporte" do
    assert_difference('PacienteReporte.count') do
      post paciente_reportes_url, params: { paciente_reporte: { pacientes_id: @paciente_reporte.pacientes_id, parte_diarios_id: @paciente_reporte.parte_diarios_id } }
    end

    assert_redirected_to paciente_reporte_url(PacienteReporte.last)
  end

  test "should show paciente_reporte" do
    get paciente_reporte_url(@paciente_reporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_url(@paciente_reporte)
    assert_response :success
  end

  test "should update paciente_reporte" do
    patch paciente_reporte_url(@paciente_reporte), params: { paciente_reporte: { pacientes_id: @paciente_reporte.pacientes_id, parte_diarios_id: @paciente_reporte.parte_diarios_id } }
    assert_redirected_to paciente_reporte_url(@paciente_reporte)
  end

  test "should destroy paciente_reporte" do
    assert_difference('PacienteReporte.count', -1) do
      delete paciente_reporte_url(@paciente_reporte)
    end

    assert_redirected_to paciente_reportes_url
  end
end
