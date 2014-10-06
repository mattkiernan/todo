class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
    render :new
  end

  def create
    List.create(list_params)
    redirect_to root_path
  end

  def edit
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :description)
  end

end
