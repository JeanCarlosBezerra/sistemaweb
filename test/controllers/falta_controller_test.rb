require 'test_helper'

class FaltaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faltum = falta(:one)
  end

  test "should get index" do
    get falta_url
    assert_response :success
  end

  test "should get new" do
    get new_faltum_url
    assert_response :success
  end

  test "should create faltum" do
    assert_difference('Faltum.count') do
      post falta_url, params: { faltum: { presenças: @faltum.presenças } }
    end

    assert_redirected_to faltum_url(Faltum.last)
  end

  test "should show faltum" do
    get faltum_url(@faltum)
    assert_response :success
  end

  test "should get edit" do
    get edit_faltum_url(@faltum)
    assert_response :success
  end

  test "should update faltum" do
    patch faltum_url(@faltum), params: { faltum: { presenças: @faltum.presenças } }
    assert_redirected_to faltum_url(@faltum)
  end

  test "should destroy faltum" do
    assert_difference('Faltum.count', -1) do
      delete faltum_url(@faltum)
    end

    assert_redirected_to falta_url
  end
end
