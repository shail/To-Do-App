class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
  end
end
