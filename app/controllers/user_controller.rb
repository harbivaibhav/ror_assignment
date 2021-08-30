class UserController < ApplicationController
	def index
		@users = User.page params[:page]
	end

	def new
		@user = User.new
	end

	def create
		#byebug
		@user = User.new(user_params)		
		if @user.save
			UserMailer.with(user: @user).welcome_email.deliver_later
			redirect_to @user
		else
			@user.errors.full_messages.first if @user.errors.any?
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		#byebug
		@user = User.find(params[:id])
	end

	def update
		#byebug
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "User updated successfully"
			redirect_to user_path
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to user_path
	end


	private

    def user_params
      params.require('user').permit(:email, :password, :password_confirmation, :first_name, :last_name, :company_name, :status, :profile_image, :role)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user.role = 'Admin')
    end
end