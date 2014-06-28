require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
    assert_index_format Project.count
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test 'should create project' do
    assert_difference('Project.count') do
      post :create,
           project: {
               description: @project.description,
               name: @project.name,
               owner: @project.owner,
               project_type_id: @project.project_type_id,
               projects_tools_attributes: [0, [{tool_id: tools(:without_projects).id }]]}
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test 'should show project' do
    get :show, id: @project
    assert_response :success
    assert_select 'h1', @project.name
    assert_select 'h2', "Tools used to build this #{@project.project_type.name}"
    assert_select '.detail_description', @project.description
  end

  test 'should get edit' do
    get :edit, id: @project
    assert_response :success
  end

  test 'should update project' do
    patch :update, id: @project,
          project: {
              description: @project.description,
              name: @project.name,
              owner: @project.owner,
              projects_tools_attributes: [0, [{tool_id: tools(:without_projects).id }]] }
    assert_redirected_to project_path(assigns(:project))
  end

  test 'should destroy project' do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
