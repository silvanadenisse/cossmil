require 'test_helper'

class ParteLaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_laboratorio = parte_laboratorios(:one)
  end

  test "should get index" do
    get parte_laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_laboratorio_url
    assert_response :success
  end

  test "should create parte_laboratorio" do
    assert_difference('ParteLaboratorio.count') do
      post parte_laboratorios_url, params: { parte_laboratorio: { mes: @parte_laboratorio.mes } }
    end

    assert_redirected_to parte_laboratorio_url(ParteLaboratorio.last)
  end

  test "should show parte_laboratorio" do
    get parte_laboratorio_url(@parte_laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_laboratorio_url(@parte_laboratorio)
    assert_response :success
  end

  test "should update parte_laboratorio" do
    patch parte_laboratorio_url(@parte_laboratorio), params: { parte_laboratorio: { mes: @parte_laboratorio.mes } }
    assert_redirected_to parte_laboratorio_url(@parte_laboratorio)
  end

  test "should destroy parte_laboratorio" do
    assert_difference('ParteLaboratorio.count', -1) do
      delete parte_laboratorio_url(@parte_laboratorio)
    end

    assert_redirected_to parte_laboratorios_url
  end
end
