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
    @ticket = Ticket.new(
      email: "test@email.com",
      showtime_id: params[:showtime_id],
      seat: 1
      )
    @ticket.save
    render "show.json.jbuilder"
  end
end
