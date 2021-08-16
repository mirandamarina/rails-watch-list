class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    Bookmark.create(def_params)
    @list = List.find(params[:list_id])
    @list = @bookmark.list
    redirect_to list_path(@list)
  end

  private

  def def_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
