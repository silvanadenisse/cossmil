require 'test_helper'

class CargaDentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga_dental = carga_dentals(:one)
  end

  test "should get index" do
    get carga_dentals_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_dental_url
    assert_response :success
  end

  test "should create carga_dental" do
    assert_difference('CargaDental.count') do
      post carga_dentals_url, params: { carga_dental: { dias_habiles: @carga_dental.dias_habiles, mes: @carga_dental.mes } }
    end

    assert_redirected_to carga_dental_url(CargaDental.last)
  end

  test "should show carga_dental" do
    get carga_dental_url(@carga_dental)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_dental_url(@carga_dental)
    assert_response :success
  end

  test "should update carga_dental" do
    patch carga_dental_url(@carga_dental), params: { carga_dental: { dias_habiles: @carga_dental.dias_habiles, mes: @carga_dental.mes } }
    assert_redirected_to carga_dental_url(@carga_dental)
  end

  test "should destroy carga_dental" do
    assert_difference('CargaDental.count', -1) do
      delete carga_dental_url(@carga_dental)
    end

    assert_redirected_to carga_dentals_url
  end
end
