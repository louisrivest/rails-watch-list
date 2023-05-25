class MoviesController < ApplicationController

  def show
    @movies = Movies.all
  end

  def index
    @movies = Movie.all
  end
end
