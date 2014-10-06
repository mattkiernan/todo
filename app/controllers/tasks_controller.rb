class TasksController < ApplicationController

  def show

  end

  def new
    @list = List.find(params[:list_id]) 
    @task = @list.tasks.new 
  end

  def create
    list = List.find(params[:list_id])
    list.tasks.create(task_params)
    redirect_to list_path(list) 
  end

  def destroy
    list = List.find(params[:list_id])
    task = Task.find(params[:id]) 
    task.destroy
    redirect_to list_path(list) 
  end

  def task_params
    params.require(:task).permit(:description)
  end

end
