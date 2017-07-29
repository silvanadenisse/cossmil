require 'test_helper'

class PacienteReporteRayosXesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_reporte_rayos_x = paciente_reporte_rayos_xes(:one)
  end

  test "should get index" do
    get paciente_reporte_rayos_xes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_reporte_rayos_x_url
    assert_response :success
  end

  test "should create paciente_reporte_rayos_x" do
    assert_difference('PacienteReporteRayosX.count') do
      post paciente_reporte_rayos_xes_url, params: { paciente_reporte_rayos_x: { ceh: @paciente_reporte_rayos_x.ceh, cinco: @paciente_reporte_rayos_x.cinco, cuatro: @paciente_reporte_rayos_x.cuatro, dos: @paciente_reporte_rayos_x.dos, edad: @paciente_reporte_rayos_x.edad, estudios: @paciente_reporte_rayos_x.estudios, hc: @paciente_reporte_rayos_x.hc, observaciones: @paciente_reporte_rayos_x.observaciones, ta: @paciente_reporte_rayos_x.ta, tres: @paciente_reporte_rayos_x.tres, uno: @paciente_reporte_rayos_x.uno } }
    end

    assert_redirected_to paciente_reporte_rayos_x_url(PacienteReporteRayosX.last)
  end

  test "should show paciente_reporte_rayos_x" do
    get paciente_reporte_rayos_x_url(@paciente_reporte_rayos_x)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_reporte_rayos_x_url(@paciente_reporte_rayos_x)
    assert_response :success
  end

  test "should update paciente_reporte_rayos_x" do
    patch paciente_reporte_rayos_x_url(@paciente_reporte_rayos_x), params: { paciente_reporte_rayos_x: { ceh: @paciente_reporte_rayos_x.ceh, cinco: @paciente_reporte_rayos_x.cinco, cuatro: @paciente_reporte_rayos_x.cuatro, dos: @paciente_reporte_rayos_x.dos, edad: @paciente_reporte_rayos_x.edad, estudios: @paciente_reporte_rayos_x.estudios, hc: @paciente_reporte_rayos_x.hc, observaciones: @paciente_reporte_rayos_x.observaciones, ta: @paciente_reporte_rayos_x.ta, tres: @paciente_reporte_rayos_x.tres, uno: @paciente_reporte_rayos_x.uno } }
    assert_redirected_to paciente_reporte_rayos_x_url(@paciente_reporte_rayos_x)
  end

  test "should destroy paciente_reporte_rayos_x" do
    assert_difference('PacienteReporteRayosX.count', -1) do
      delete paciente_reporte_rayos_x_url(@paciente_reporte_rayos_x)
    end

    assert_redirected_to paciente_reporte_rayos_xes_url
  end
end
