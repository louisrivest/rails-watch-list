class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @movie = Movie.all
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, notice: "List was successfully destroyed."
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
