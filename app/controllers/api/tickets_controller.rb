class Api::TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
    render "index.json.jbuilder"
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create 
    @user = User.find_by(email: params[:email])
    if !@user
      @user = User.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        credit_card: params[:credit_card],
        cvv: params[:cvv],
        expiration_date: "2020-09-04 20:49:33.050726"
      )
      if !@user.save
        render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
        return
      end
    end
    @ticket = Ticket.new(
      email: params[:email],
      showtime_id: params[:showtime_id],
      seat: 2
      )
    if @ticket.save
      render "show.json.jbuilder"
    else
      render json: {errors: @ticket.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
