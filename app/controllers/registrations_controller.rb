class RegistrationsController < Devise::RegistrationsController
  	
  	protected

	def update_resource(resource, params)
	resource.update_with_password(params)
	end

	def sign_up_params
		params.require(:user).permit(
			:email,
			:first_name,
			:last_name,
			:school_name,
			:internship_year,
			:password,
			:password_confirmation,
			)
	end

	def account_update_params
		params.require(:user).permit(
			:email,
			:first_name,
			:last_name,
			:school_name,
			:internship_year,
			:current_password
			:password,
			:password_confirmation,
			)

	end

end
