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
    redirect_to root_path
  end

  def task_params
    params.require(:task).permit(:description)
  end

end
