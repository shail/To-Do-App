class UsersController < ApplicationController
  
  def show
    if user_signed_in?
      @user = current_user
    else
      redirect_to new_user_session_path
    end
  end
  
end