class PagesController < ApplicationController

	def home
		
	end

	def info
		if current_user
			if current_user.admin
				@feedbacks=UserFeedback.all
			else
				@feedbacks=current_user.user_feedbacks
			end
		end				
	end

end
