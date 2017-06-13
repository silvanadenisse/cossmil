require 'test_helper'

class ParteDiariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_diario = parte_diarios(:one)
  end

  test "should get index" do
    get parte_diarios_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_diario_url
    assert_response :success
  end

  test "should create parte_diario" do
    assert_difference('ParteDiario.count') do
      post parte_diarios_url, params: { parte_diario: { clave: @parte_diario.clave, enfermera: @parte_diario.enfermera, fin_consulta: @parte_diario.fin_consulta, inicio_consulta: @parte_diario.inicio_consulta, mes: @parte_diario.mes, nombre_medico: @parte_diario.nombre_medico, servicio_de: @parte_diario.servicio_de } }
    end

    assert_redirected_to parte_diario_url(ParteDiario.last)
  end

  test "should show parte_diario" do
    get parte_diario_url(@parte_diario)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_diario_url(@parte_diario)
    assert_response :success
  end

  test "should update parte_diario" do
    patch parte_diario_url(@parte_diario), params: { parte_diario: { clave: @parte_diario.clave, enfermera: @parte_diario.enfermera, fin_consulta: @parte_diario.fin_consulta, inicio_consulta: @parte_diario.inicio_consulta, mes: @parte_diario.mes, nombre_medico: @parte_diario.nombre_medico, servicio_de: @parte_diario.servicio_de } }
    assert_redirected_to parte_diario_url(@parte_diario)
  end

  test "should destroy parte_diario" do
    assert_difference('ParteDiario.count', -1) do
      delete parte_diario_url(@parte_diario)
    end

    assert_redirected_to parte_diarios_url
  end
end
