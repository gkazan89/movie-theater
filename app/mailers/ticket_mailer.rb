class TicketMailer < ApplicationMailer
  default from: 'grantkazan@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Your ticket receipt')
  end
end
