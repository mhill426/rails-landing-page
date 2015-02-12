class ThanksMailer < MandrillMailer::TemplateMailer
  default from: 'info@matthewdhill.com',
          from_name: 'Rails Landing Page - GitHub'

  def thanks(landing)
  	@landing = landing
  	email = @landing.email
    mandrill_mail template: 'subscription thank you',
                  subject: "Thank you for your interest!",
                  # to: invitation.invitees.map {|invitee| { email: invitee.email, name: invitee.name }},
                  to: email,
                  vars: { 'SUBJECT' => "Thank you for your interest!" },
                  inline_css: true          
  end
end
