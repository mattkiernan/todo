class TasksController < ApplicationController

  def show

  end

  def new
    @task = Task.new
  end

end
