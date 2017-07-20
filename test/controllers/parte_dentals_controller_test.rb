require 'test_helper'

class ParteDentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_dental = parte_dentals(:one)
  end

  test "should get index" do
    get parte_dentals_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_dental_url
    assert_response :success
  end

  test "should create parte_dental" do
    assert_difference('ParteDental.count') do
      post parte_dentals_url, params: { parte_dental: { clave: @parte_dental.clave, enfermera: @parte_dental.enfermera, fin_consulta: @parte_dental.fin_consulta, inicio_consulta: @parte_dental.inicio_consulta, mes: @parte_dental.mes } }
    end

    assert_redirected_to parte_dental_url(ParteDental.last)
  end

  test "should show parte_dental" do
    get parte_dental_url(@parte_dental)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_dental_url(@parte_dental)
    assert_response :success
  end

  test "should update parte_dental" do
    patch parte_dental_url(@parte_dental), params: { parte_dental: { clave: @parte_dental.clave, enfermera: @parte_dental.enfermera, fin_consulta: @parte_dental.fin_consulta, inicio_consulta: @parte_dental.inicio_consulta, mes: @parte_dental.mes } }
    assert_redirected_to parte_dental_url(@parte_dental)
  end

  test "should destroy parte_dental" do
    assert_difference('ParteDental.count', -1) do
      delete parte_dental_url(@parte_dental)
    end

    assert_redirected_to parte_dentals_url
  end
end
