require 'test_helper'

class PacienteReporteDentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte_dental = paciente_reporte_dentals(:one)
  end

  test "should get index" do
    get paciente_reporte_dentals_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_dental_url
    assert_response :success
  end

  test "should create paciente_reporte_dental" do
    assert_difference('PacienteReporteDental.count') do
      post paciente_reporte_dentals_url, params: { paciente_reporte_dental: { diagnostico: @paciente_reporte_dental.diagnostico, tipo_asegurado: @paciente_reporte_dental.tipo_asegurado, tipo_consulta: @paciente_reporte_dental.tipo_consulta, tratamiento: @paciente_reporte_dental.tratamiento } }
    end

    assert_redirected_to paciente_reporte_dental_url(PacienteReporteDental.last)
  end

  test "should show paciente_reporte_dental" do
    get paciente_reporte_dental_url(@paciente_reporte_dental)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_dental_url(@paciente_reporte_dental)
    assert_response :success
  end

  test "should update paciente_reporte_dental" do
    patch paciente_reporte_dental_url(@paciente_reporte_dental), params: { paciente_reporte_dental: { diagnostico: @paciente_reporte_dental.diagnostico, tipo_asegurado: @paciente_reporte_dental.tipo_asegurado, tipo_consulta: @paciente_reporte_dental.tipo_consulta, tratamiento: @paciente_reporte_dental.tratamiento } }
    assert_redirected_to paciente_reporte_dental_url(@paciente_reporte_dental)
  end

  test "should destroy paciente_reporte_dental" do
    assert_difference('PacienteReporteDental.count', -1) do
      delete paciente_reporte_dental_url(@paciente_reporte_dental)
    end

    assert_redirected_to paciente_reporte_dentals_url
  end
end
