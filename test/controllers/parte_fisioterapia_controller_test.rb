require 'test_helper'

class ParteFisioterapiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte_fisioterapium = parte_fisioterapia(:one)
  end

  test "should get index" do
    get parte_fisioterapia_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_fisioterapium_url
    assert_response :success
  end

  test "should create parte_fisioterapium" do
    assert_difference('ParteFisioterapium.count') do
      post parte_fisioterapia_url, params: { parte_fisioterapium: { mes: @parte_fisioterapium.mes, turno: @parte_fisioterapium.turno } }
    end

    assert_redirected_to parte_fisioterapium_url(ParteFisioterapium.last)
  end

  test "should show parte_fisioterapium" do
    get parte_fisioterapium_url(@parte_fisioterapium)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_fisioterapium_url(@parte_fisioterapium)
    assert_response :success
  end

  test "should update parte_fisioterapium" do
    patch parte_fisioterapium_url(@parte_fisioterapium), params: { parte_fisioterapium: { mes: @parte_fisioterapium.mes, turno: @parte_fisioterapium.turno } }
    assert_redirected_to parte_fisioterapium_url(@parte_fisioterapium)
  end

  test "should destroy parte_fisioterapium" do
    assert_difference('ParteFisioterapium.count', -1) do
      delete parte_fisioterapium_url(@parte_fisioterapium)
    end

    assert_redirected_to parte_fisioterapia_url
  end
end
