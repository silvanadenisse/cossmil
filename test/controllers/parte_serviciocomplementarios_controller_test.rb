require 'test_helper'

class ParteServiciocomplementariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_serviciocomplementario = parte_serviciocomplementarios(:one)
  end

  test "should get index" do
    get parte_serviciocomplementarios_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_serviciocomplementario_url
    assert_response :success
  end

  test "should create parte_serviciocomplementario" do
    assert_difference('ParteServiciocomplementario.count') do
      post parte_serviciocomplementarios_url, params: { parte_serviciocomplementario: { mes: @parte_serviciocomplementario.mes } }
    end

    assert_redirected_to parte_serviciocomplementario_url(ParteServiciocomplementario.last)
  end

  test "should show parte_serviciocomplementario" do
    get parte_serviciocomplementario_url(@parte_serviciocomplementario)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_serviciocomplementario_url(@parte_serviciocomplementario)
    assert_response :success
  end

  test "should update parte_serviciocomplementario" do
    patch parte_serviciocomplementario_url(@parte_serviciocomplementario), params: { parte_serviciocomplementario: { mes: @parte_serviciocomplementario.mes } }
    assert_redirected_to parte_serviciocomplementario_url(@parte_serviciocomplementario)
  end

  test "should destroy parte_serviciocomplementario" do
    assert_difference('ParteServiciocomplementario.count', -1) do
      delete parte_serviciocomplementario_url(@parte_serviciocomplementario)
    end

    assert_redirected_to parte_serviciocomplementarios_url
  end
end
