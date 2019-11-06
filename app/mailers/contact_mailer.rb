class ContactMailer < ApplicationMailer
	default from: "sales@aloop.com"

	def new_contact_us_submission(contact)
		@contact = contact
		mail(to: "pete@aloop.com, lisa@aloop.com, sales@aloop.com", subject: "Contact Us Submission from Aloop.com")
	end
end
# pete@aloop.com, sales@aloop.com, lisa@aloop.com
