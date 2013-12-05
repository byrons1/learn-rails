class UserMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"

  def contact_email(contact)
  	@contact = contact
  	Rails.logger.debug "DEBUG: contact info is #{@contact.name}"
  	mail(to: ENV["OWNER_EMAIL"], from: @contact.email, :subject => "Website Contact")
  end
end
