class User2sController < ApplicationController
  before_action :set_user2, only: [:show, :edit, :update, :destroy]

  # GET /user2s
  # GET /user2s.json
  def index
    @user2s = User2.all
  end

  # GET /user2s/1
  # GET /user2s/1.json
  def show
  end

  # GET /user2s/new
  def new
    @user2 = User2.new
  end

  # GET /user2s/1/edit
  def edit
  end

  # POST /user2s
  # POST /user2s.json
  def create
    @user2 = User2.new(email: params[:email])
    if @user2.save
      User2Mailer.with(user2: @user2).user2_email.deliver_now
      render json: {message: "e-mail sent"}
    end
  end

  # PATCH/PUT /user2s/1
  # PATCH/PUT /user2s/1.json
  def update
    respond_to do |format|
      if @user2.update(user2_params)
        format.html { redirect_to @user2, notice: 'User2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @user2 }
      else
        format.html { render :edit }
        format.json { render json: @user2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user2s/1
  # DELETE /user2s/1.json
  def destroy
    @user2.destroy
    respond_to do |format|
      format.html { redirect_to user2s_url, notice: 'User2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_user2
  #     @user2 = User2.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def user2_params
  #     params.require(:user2).permit(:email)
  #   end
end
