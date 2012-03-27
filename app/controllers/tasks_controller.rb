class TasksController < ApplicationController

  before_filter :correct_list_and_task, only: [:update, :destroy, :edit, :toggle_completed]

  def new
    @list = current_user.lists.find(params[:list_id])
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
  
  def destroy
    @task.destroy
    redirect_to list_path(@list)
  end
  
  def update
    @task.update_attributes(params[:task])
    redirect_to list_path(@list)
  end
  
  def edit
  end
  
  def toggle_completed
    if @task.completion_status == true
      @task.completion_status = false
    else
      @task.completion_status = true
    end
    @task.save
    redirect_to list_path(@list)
  end

  private

    def correct_list_and_task
      @list = current_user.lists.find(params[:list_id])
      @task = @list.tasks.find_by_id(params[:id])
    end


end
