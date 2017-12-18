require 'test_helper'

class PealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peal = peals(:one)
  end

  test "should get index" do
    get peals_url
    assert_response :success
  end

  test "should get new" do
    get new_peal_url
    assert_response :success
  end

  test "should create peal" do
    assert_difference('Peal.count') do
      post peals_url, params: { peal: { Date: @peal.Date, desc: @peal.desc, money: @peal.money, name: @peal.name, point: @peal.point } }
    end

    assert_redirected_to peal_url(Peal.last)
  end

  test "should show peal" do
    get peal_url(@peal)
    assert_response :success
  end

  test "should get edit" do
    get edit_peal_url(@peal)
    assert_response :success
  end

  test "should update peal" do
    patch peal_url(@peal), params: { peal: { Date: @peal.Date, desc: @peal.desc, money: @peal.money, name: @peal.name, point: @peal.point } }
    assert_redirected_to peal_url(@peal)
  end

  test "should destroy peal" do
    assert_difference('Peal.count', -1) do
      delete peal_url(@peal)
    end

    assert_redirected_to peals_url
  end
end
