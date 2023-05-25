class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create

  end



end
