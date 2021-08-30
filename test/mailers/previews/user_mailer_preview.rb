# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def new_user_email
    # Set up a temporary order for the preview
    user = User.new(email: "vaibhav.ghadage@harbingergroup.com", password: "860000", password_confirmation: "860000", first_name: "first")

    UserMailer.with(user: user).welcome_email
  end
end
