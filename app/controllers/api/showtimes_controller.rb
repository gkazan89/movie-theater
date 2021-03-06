class Api::ShowtimesController < ApplicationController

  def index 
    @showtimes = Showtime.all
    render "index.json.jbuilder"
  end

  def create
    @showtime = Showtime.new(
      time: params[:time],
      movie_id: params[:movie_id],
      theater_id: params[:theater_id],
      openSeats: params[:openSeats]
      )
    @showtime.save
    render "show.json.jbuilder"
  end

  def update
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.time = params[:time] || @showtime.time
    @showtime.movie_id = params[:movie_id] || @showtime.movie_id
    @showtime.theater_id = params[:theater_id] || @showtime.theater_id
    @showtime.openSeats = params[:openSeats] || @showtime.openSeats
    @showtime.save
    render "show.json.jbuilder" 
  end

  # could include this in the model as well
  def buy
    @showtime = Showtime.find_by(id: params[:id])
    if @showtime.openSeats > 0
      @showtime.openSeats -= 1
    else
      @showtime.openSeats == 0
    end
    @showtime.save
    render "show.json.jbuilder"
  end

  def delete
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.destroy
    render json: {message: "Showtime deleted"}
  end
end
