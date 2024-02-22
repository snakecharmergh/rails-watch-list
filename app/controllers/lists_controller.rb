class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def index
    @lists = List.all
  end

  def show
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:id, :name)
  end
end
