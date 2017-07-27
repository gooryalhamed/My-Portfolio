class UserMailer < ApplicationMailer
	def send_to_me(msg)
		mail(to: "gooryalhamed@gmail.com")
	end
end
