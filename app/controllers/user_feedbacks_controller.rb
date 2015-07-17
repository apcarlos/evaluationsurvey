class UserFeedbacksController < ApplicationController
  before_action :authenticate_user!

  def new
  		@user_feedback =User.find(params[:user_id]).user_feedbacks.new
  end

  def show
      @user = User.find(params[:id])

      user_feedbacks = UserFeedback.where(:user_id => params[:id])
      @feedbacks = []
      user_feedbacks.each do |user_feedback|
        @feedbacks << user_feedback.feedback.to_s
      end
      @feedbacks.compact
  end

  def create
  		@user = User.find(params[:user_feedback][:user_id])
  		@user_feedback=@user.user_feedbacks.create(user_feedback_params)
  		redirect_to @user_feedba
  end

  def user_feedback_params
  				params.require(:user_feedback).permit(
  						:user_id,
  						:feedback)
  end

  def index
  	@user_feedbacks =UserFeedback.all
  end

end
