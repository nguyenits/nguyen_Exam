class ExampleMailer < ApplicationMailer
  default from: "nguyenitsexam@gmail.com"

  def sample_email user
    @user = user
    mail from: "nguyenitsexam@gmail.com", to: @user.email, subject: "you just done the test"
  end
end
