class WelcomeMailer < ActionMailer::Base
  default from: "info@matthewdhill.com"

  def welcome(landing)
  	@landing = landing
  	email = @landing.email
    mail(:to => email, :subject => "Thanks for signing up!") do |format|
      format.text
    end
  end
end