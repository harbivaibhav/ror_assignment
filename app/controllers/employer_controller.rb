class EmployerController < ApplicationController
	def index
		@employers = User.page(params[:page]).where(["role = :role", { role: "Employer" }])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to employer_index_path
	end

	def correct_user
      @current_user = User.find(params[:id] = current_user.id)
      if(@current_user.role == 'Admin')
      	return true
      else
      	return false
      end
    end

    helper_method :correct_user
end
