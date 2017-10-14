require 'test_helper'

class PacienteServiciocomplementariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_serviciocomplementario = paciente_serviciocomplementarios(:one)
  end

  test "should get index" do
    get paciente_serviciocomplementarios_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_serviciocomplementario_url
    assert_response :success
  end

  test "should create paciente_serviciocomplementario" do
    assert_difference('PacienteServiciocomplementario.count') do
      post paciente_serviciocomplementarios_url, params: { paciente_serviciocomplementario: { diagnostico: @paciente_serviciocomplementario.diagnostico, estudio: @paciente_serviciocomplementario.estudio } }
    end

    assert_redirected_to paciente_serviciocomplementario_url(PacienteServiciocomplementario.last)
  end

  test "should show paciente_serviciocomplementario" do
    get paciente_serviciocomplementario_url(@paciente_serviciocomplementario)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_serviciocomplementario_url(@paciente_serviciocomplementario)
    assert_response :success
  end

  test "should update paciente_serviciocomplementario" do
    patch paciente_serviciocomplementario_url(@paciente_serviciocomplementario), params: { paciente_serviciocomplementario: { diagnostico: @paciente_serviciocomplementario.diagnostico, estudio: @paciente_serviciocomplementario.estudio } }
    assert_redirected_to paciente_serviciocomplementario_url(@paciente_serviciocomplementario)
  end

  test "should destroy paciente_serviciocomplementario" do
    assert_difference('PacienteServiciocomplementario.count', -1) do
      delete paciente_serviciocomplementario_url(@paciente_serviciocomplementario)
    end

    assert_redirected_to paciente_serviciocomplementarios_url
  end
end
