require 'test_helper'

class ProjectListsControllerTest < ActionController::TestCase
  setup do
    @project_list = project_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_list" do
    assert_difference('ProjectList.count') do
      post :create, project_list: { description: @project_list.description, title: @project_list.title }
    end

    assert_redirected_to project_list_path(assigns(:project_list))
  end

  test "should show project_list" do
    get :show, id: @project_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_list
    assert_response :success
  end

  test "should update project_list" do
    patch :update, id: @project_list, project_list: { description: @project_list.description, title: @project_list.title }
    assert_redirected_to project_list_path(assigns(:project_list))
  end

  test "should destroy project_list" do
    assert_difference('ProjectList.count', -1) do
      delete :destroy, id: @project_list
    end

    assert_redirected_to project_lists_path
  end
end
