class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:id, :name)
  end
end
