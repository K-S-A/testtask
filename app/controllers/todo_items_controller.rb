class TodoItemsController < ApplicationController
  before_action :set_project_list

  def create
    @todo_item = @project_list.todo_items.create(todo_item_params)
    redirect_to @project_list
  end

  def destroy
    @todo_item = @project_list.todo_items.find(params[:id])
    if @todo_item.destroy
      flash[:success] = "Item was deleted."
    else
      flash[:error] = "Item could not be deleted."
    end
    redirect_to @project_list
  end

  private

  def set_project_list
    @project_list = ProjectList.find(params[:project_list_id])
  end

  def todo_item_params
   params[:todo_item].permit(:content)
  end
end
