require 'test_helper'

class ToolTypesControllerTest < ActionController::TestCase
  setup do
    @tool_type = tool_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tool_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool_type" do
    assert_difference('ToolType.count') do
      post :create, tool_type: { description: @tool_type.description, name: @tool_type.name }
    end

    assert_redirected_to tool_type_path(assigns(:tool_type))
  end

  test "should show tool_type" do
    get :show, id: @tool_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool_type
    assert_response :success
  end

  test "should update tool_type" do
    patch :update, id: @tool_type, tool_type: { description: @tool_type.description, name: @tool_type.name }
    assert_redirected_to tool_type_path(assigns(:tool_type))
  end

  test "should destroy tool_type" do
    assert_difference('ToolType.count', -1) do
      delete :destroy, id: @tool_type
    end

    assert_redirected_to tool_types_path
  end
end
