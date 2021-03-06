class Api::TheatersController < ApplicationController

  def index
    @theaters = Theater.all
    render "index.json.jbuilder"
  end

  def show
    @theater = Theater.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @theater = Theater.new(
      capacity: params[:capacity]
      )
    if @theater.save
      render "show.json.jbuilder"
    else
      render json: {errors: @theater.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @theater = Theater.find_by(id: params[:id])
    @theater.capacity = params[:capacity] || @theater.capacity
    @theater.save
    render "show.json.jbuilder"
  end

  def destroy
    @theater = Theater.find_by(id: params[:id])
    @theater.destroy
    render json: {message: "Theater destroyed"}
  end
end
