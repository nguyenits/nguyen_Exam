# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'http://localhost:3000',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true,
}