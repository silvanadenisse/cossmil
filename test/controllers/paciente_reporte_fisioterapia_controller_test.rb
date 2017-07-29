require 'test_helper'

class PacienteReporteFisioterapiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte_fisioterapium = paciente_reporte_fisioterapia(:one)
  end

  test "should get index" do
    get paciente_reporte_fisioterapia_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_fisioterapium_url
    assert_response :success
  end

  test "should create paciente_reporte_fisioterapium" do
    assert_difference('PacienteReporteFisioterapium.count') do
      post paciente_reporte_fisioterapia_url, params: { paciente_reporte_fisioterapium: { diagnostico: @paciente_reporte_fisioterapium.diagnostico, edad: @paciente_reporte_fisioterapium.edad, num_sesion: @paciente_reporte_fisioterapium.num_sesion, procedencia: @paciente_reporte_fisioterapium.procedencia, tipo_asegurado: @paciente_reporte_fisioterapium.tipo_asegurado, tipo_consulta: @paciente_reporte_fisioterapium.tipo_consulta } }
    end

    assert_redirected_to paciente_reporte_fisioterapium_url(PacienteReporteFisioterapium.last)
  end

  test "should show paciente_reporte_fisioterapium" do
    get paciente_reporte_fisioterapium_url(@paciente_reporte_fisioterapium)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_fisioterapium_url(@paciente_reporte_fisioterapium)
    assert_response :success
  end

  test "should update paciente_reporte_fisioterapium" do
    patch paciente_reporte_fisioterapium_url(@paciente_reporte_fisioterapium), params: { paciente_reporte_fisioterapium: { diagnostico: @paciente_reporte_fisioterapium.diagnostico, edad: @paciente_reporte_fisioterapium.edad, num_sesion: @paciente_reporte_fisioterapium.num_sesion, procedencia: @paciente_reporte_fisioterapium.procedencia, tipo_asegurado: @paciente_reporte_fisioterapium.tipo_asegurado, tipo_consulta: @paciente_reporte_fisioterapium.tipo_consulta } }
    assert_redirected_to paciente_reporte_fisioterapium_url(@paciente_reporte_fisioterapium)
  end

  test "should destroy paciente_reporte_fisioterapium" do
    assert_difference('PacienteReporteFisioterapium.count', -1) do
      delete paciente_reporte_fisioterapium_url(@paciente_reporte_fisioterapium)
    end

    assert_redirected_to paciente_reporte_fisioterapia_url
  end
end
