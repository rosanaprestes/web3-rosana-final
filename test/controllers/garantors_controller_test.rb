require 'test_helper'

class GarantorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garantor = garantors(:one)
  end

  test "should get index" do
    get garantors_url
    assert_response :success
  end

  test "should get new" do
    get new_garantor_url
    assert_response :success
  end

  test "should create garantor" do
    assert_difference('Garantor.count') do
      post garantors_url, params: { garantor: { address: @garantor.address, name: @garantor.name, telephone: @garantor.telephone, value_tranfer: @garantor.value_tranfer } }
    end

    assert_redirected_to garantor_url(Garantor.last)
  end

  test "should show garantor" do
    get garantor_url(@garantor)
    assert_response :success
  end

  test "should get edit" do
    get edit_garantor_url(@garantor)
    assert_response :success
  end

  test "should update garantor" do
    patch garantor_url(@garantor), params: { garantor: { address: @garantor.address, name: @garantor.name, telephone: @garantor.telephone, value_tranfer: @garantor.value_tranfer } }
    assert_redirected_to garantor_url(@garantor)
  end

  test "should destroy garantor" do
    assert_difference('Garantor.count', -1) do
      delete garantor_url(@garantor)
    end

    assert_redirected_to garantors_url
  end
end
