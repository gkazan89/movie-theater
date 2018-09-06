class User2Mailer < ApplicationMailer
  default from: 'grantkazan@gmail.com'

  def user2_email
    @user2 = params[:user2]
    mail(to: @user2.email, subject: 'Your ticket receipt')
  end
end
