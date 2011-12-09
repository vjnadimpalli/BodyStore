require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  setup do
    @line_item = line_items(:two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do
      post :create, :product_id => line_items(:two).id
    end

    assert_redirected_to store_path
  end

  test "should show line_item" do
    get :show, id: @line_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_item.to_param
    assert_response :success
  end

  test "should update line_item" do
    put :update, id: @line_item.to_param, line_item: @line_item.attributes
    assert_redirected_to store_path
  end

  test "should destroy line_item" do
    assert_difference('LineItem.count', -1) do
      delete :destroy, id: @line_item.to_param
    end

    assert_redirected_to store_path
  end
end
