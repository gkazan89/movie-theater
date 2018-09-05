class Api::ShowtimesController < ApplicationController

  def index 
    @showtimes = Showtime.all
    render "index.json.jbuilder"
  end

  def create
    @showtime = Showtime.new(
      # will switch this to params
      time: Time.new(2018,9,1,18,00,00,"-05:00"),
      movie_id: params[:movie_id],
      theater_id: params[:theater_id]
      )
    @showtime.save
    # need to check to ensure there's no overlap with a movie already there
    render "show.json.jbuilder"
  end

  def update
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.time = params[:time] || @showtime.time
    @showtime.movie_id = params[:movie_id] || @showtime.movie_id
    @showtime.theater_id = params[:theater_id] || @showtime.theater_id
    @showtime.save
    render "show.json.jbuilder" 
  end

  def delete
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.destroy
    render json: {message: "Showtime deleted"}
  end
end
