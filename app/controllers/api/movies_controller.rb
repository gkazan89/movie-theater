class Api::MoviesController < ApplicationController
  
  def index
    # need to show all the showtimes 
    @movies = Movie.all
    render "index.json.jbuilder"
  end

  def create
    @movie = Movie.new(
      name: params[:name],
      runtime: params[:runtime],
      )
    @movie.save
    render "show.json.jbuilder"
  end

  def delete
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Movie Eliminated"}
  end
end
