class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params[:task])
    @task.list_id = current_user.id
    if @task.save
      flash[:success] = "New task added"
      redirect_to root_path
    else
      flash[:error] = "Task creation failed."
      render 'new'
    end
  end
end
