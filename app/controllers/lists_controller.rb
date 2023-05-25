class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @mvoie = Movie.all
  end

  def index
    @list = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params.require(:list).permit(:name))
    @list.save
    redirect_to @list
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, notice: "List was successfully destroyed."
  end

end
