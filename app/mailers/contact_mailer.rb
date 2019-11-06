class ContactMailer < ApplicationMailer
	default from: "sales@aloop.com"

	def new_contact_us_submission(contact)
		@contact = contact
		mail(to: "lizbayardelle@gmail.com, liz@thestaysanemom.com", subject: "Contact Us Submission from Aloop.com")
	end
end
# pete@aloop.com, sales@aloop.com, lisa@aloop.com
