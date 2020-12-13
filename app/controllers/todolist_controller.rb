class TodolistController < ApplicationController
  def new
  	@list = List.new
  end

  def create
  	list = List.new(list_params)
  	list.save
  	redirect_to todolist_index_path
  end

  def index
  	@list = List.all
  end

  def edit
  	@list = List.find(params[:id])
  end

  def update
  	list = List.find(params[:id])
  	list.update(list_params)
  	redirect_to todolist_index_path
  end



  private
  def list_params
  	params.require(:list).permit(:title, :body)
  end
end
