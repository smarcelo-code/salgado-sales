require "test_helper"

class ItensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iten = itens(:one)
  end

  test "should get index" do
    get itens_url
    assert_response :success
  end

  test "should get new" do
    get new_iten_url
    assert_response :success
  end

  test "should create iten" do
    assert_difference("Iten.count") do
      post itens_url, params: { iten: { category: @iten.category, description: @iten.description, name: @iten.name, quantity: @iten.quantity } }
    end

    assert_redirected_to iten_url(Iten.last)
  end

  test "should show iten" do
    get iten_url(@iten)
    assert_response :success
  end

  test "should get edit" do
    get edit_iten_url(@iten)
    assert_response :success
  end

  test "should update iten" do
    patch iten_url(@iten), params: { iten: { category: @iten.category, description: @iten.description, name: @iten.name, quantity: @iten.quantity } }
    assert_redirected_to iten_url(@iten)
  end

  test "should destroy iten" do
    assert_difference("Iten.count", -1) do
      delete iten_url(@iten)
    end

    assert_redirected_to itens_url
  end
end
