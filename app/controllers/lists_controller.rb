class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    # redirect_to list_path
  end

  def new
  end

  def create
    List.create(list_params)
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
