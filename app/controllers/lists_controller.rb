class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(params[:list])
    @list.user_id = current_user.id
    if @list.save
      flash[:success] = "New list created"
      redirect_to root_path
    else
      flash[:error] = "List creation failed."
      render 'new'
    end
  end
end
