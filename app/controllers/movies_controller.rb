class MoviesController < ApplicationController

  def show
    @movies = Movies.all
  end
end
