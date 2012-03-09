class TasksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @task = Task.new#(list_id:@list.id)
  end
  
  def create
    @task = Task.new(params[:task])
    @task.priority_number ||= 1
    if @task.save
      flash[:success] = "New task added"
      redirect_to list_path(List.find(params[:list_id]))
    else
      flash[:error] = "Task creation failed."
      render 'new'
    end
  end
  
  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find_by_id(params[:id])
    @task.destroy
    redirect_to list_path(@list)
  end
  
  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find_by_id(params[:id])
    if params[:foo]
      #how do we know if finish was clicked vs edit here?
      if @task.completion_status == true
        @task.completion_status = false
      else
        @task.completion_status = true
      end
    end
    @task.save
    redirect_to list_path(@list)
  end
  
  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find_by_id(params[:id])
  end
  
  def toggle_completed
    @list = List.find(params[:list_id])
    @task = @list.tasks.find_by_id(params[:id])
    if @task.completion_status == true
      @task.completion_status = false
    else
      @task.completion_status = true
    end
    @task.save
    redirect_to list_path(@list)
  end

end
