class UserFeedbacksController < ApplicationController
  def new
  	@user_feedback =User.find(params[:user_id]).user_feedbacks.new
  end

  def show
  	@user_feedback =UserFeedback.find(params[:id])
  end

  def create
  	@user_feedback=UserFeedback.create(user_feedback_params)
  	redirect_to @user_feedback
  end 
  
  def user_feedback_params
		params.require(:user_feedback).permit(
			:user_id,
			:feedback,
			)

	end	
end
