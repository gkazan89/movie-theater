class Api::UsersController < ApplicationController
  
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      credit_card: params[:credit_card],
      cvv: params[:cvv],
      expiration_date: params[:expiration_date]
      )
    if @user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
