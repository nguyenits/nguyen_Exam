class ExampleMailer < ApplicationMailer
  default from: "nguyenexamits@gmail.com"

  def sample_email user
    @user = user
    mail to: @user.email, subject: "you just done the test"
  end
end
