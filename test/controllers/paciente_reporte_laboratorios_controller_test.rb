require 'test_helper'

class PacienteReporteLaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte_laboratorio = paciente_reporte_laboratorios(:one)
  end

  test "should get index" do
    get paciente_reporte_laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_laboratorio_url
    assert_response :success
  end

  test "should create paciente_reporte_laboratorio" do
    assert_difference('PacienteReporteLaboratorio.count') do
      post paciente_reporte_laboratorios_url, params: { paciente_reporte_laboratorio: { bioquimica: @paciente_reporte_laboratorio.bioquimica, gsanguineo: @paciente_reporte_laboratorio.gsanguineo, heces: @paciente_reporte_laboratorio.heces, hematologia: @paciente_reporte_laboratorio.hematologia, nomlab: @paciente_reporte_laboratorio.nomlab, orinas: @paciente_reporte_laboratorio.orinas, procedencia: @paciente_reporte_laboratorio.procedencia, serologia: @paciente_reporte_laboratorio.serologia } }
    end

    assert_redirected_to paciente_reporte_laboratorio_url(PacienteReporteLaboratorio.last)
  end

  test "should show paciente_reporte_laboratorio" do
    get paciente_reporte_laboratorio_url(@paciente_reporte_laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_laboratorio_url(@paciente_reporte_laboratorio)
    assert_response :success
  end

  test "should update paciente_reporte_laboratorio" do
    patch paciente_reporte_laboratorio_url(@paciente_reporte_laboratorio), params: { paciente_reporte_laboratorio: { bioquimica: @paciente_reporte_laboratorio.bioquimica, gsanguineo: @paciente_reporte_laboratorio.gsanguineo, heces: @paciente_reporte_laboratorio.heces, hematologia: @paciente_reporte_laboratorio.hematologia, nomlab: @paciente_reporte_laboratorio.nomlab, orinas: @paciente_reporte_laboratorio.orinas, procedencia: @paciente_reporte_laboratorio.procedencia, serologia: @paciente_reporte_laboratorio.serologia } }
    assert_redirected_to paciente_reporte_laboratorio_url(@paciente_reporte_laboratorio)
  end

  test "should destroy paciente_reporte_laboratorio" do
    assert_difference('PacienteReporteLaboratorio.count', -1) do
      delete paciente_reporte_laboratorio_url(@paciente_reporte_laboratorio)
    end

    assert_redirected_to paciente_reporte_laboratorios_url
  end
end
