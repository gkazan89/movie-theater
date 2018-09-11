class Api::UsersController < ApplicationController
  
  # def show
  #   @user = User.find_by()
  # end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      credit_card: params[:credit_card],
      cvv: params[:cvv],
      expiration_date: "2020-09-04 20:49:33.050726"
      )
    if @user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
