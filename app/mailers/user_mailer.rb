class UserMailer < ApplicationMailer
  default from: 'vaibhav.ghadage@harbingergroup.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Ruby on Rails Applicaion!')
  end
end
