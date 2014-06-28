require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  setup do
    @tool_without_projects = tools(:without_projects)
    @tool_with_projects = tools(:with_projects)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:tools)
    assert_index_format Tool.count
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create tool' do
    assert_difference('Tool.count') do
      post :create,
           tool: {
             tool_type_id: tool_types(:one).id,
             description: @tool_without_projects.description,
             name: @tool_without_projects.name }
    end

    assert_redirected_to tool_path(assigns(:tool))
  end

  test 'should show tool' do
    get :show, id: @tool_without_projects
    assert_response :success
    assert_select 'h1', "#{@tool_without_projects.name} #{@tool_without_projects.tool_type.name}"
  end

  test 'should show one or more related projects' do
    get :show, id: @tool_with_projects
    assert_select 'h2', 'Related Projects'
    #todo: assert count
  end

  test 'should not show zero related projects' do
    get :show, id: @tool_without_projects
    assert_select 'h2', 0
  end

  test 'should get edit' do
    get :edit, id: @tool_without_projects
    assert_response :success
  end

  test 'should update tool' do
    patch :update, id: @tool_without_projects,
          tool: {
              description: @tool_without_projects.description,
              name: @tool_without_projects.name  }

    assert_redirected_to tool_path(assigns(:tool))
  end

  test 'should destroy tool' do
    assert_difference('Tool.count', -1) do
      delete :destroy, id: @tool_without_projects
    end

    assert_redirected_to tools_path
  end
end
