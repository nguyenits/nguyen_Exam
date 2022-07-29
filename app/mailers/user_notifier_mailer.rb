class UserNotifierMailer < ApplicationMailer
  default :from => 'nguyenitsexam@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    @url = 'http://www.gmail.com'
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
