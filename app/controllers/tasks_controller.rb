class TasksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @task = Task.new#(list_id:@list.id)
  end
  
  def create
    
    @task = Task.new(params[:task])
    if @task.save
      flash[:success] = "New task added"
      redirect_to list_path(List.find(params[:list_id]))
    else
      flash[:error] = "Task creation failed."
      render 'new'
    end
  end
end
