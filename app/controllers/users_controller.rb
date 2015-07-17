class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  	@users = User.all
  end

  def new
  	@users = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update!(user_params)
  		redirect_to user_path @user
  	else
  		render 'edit'
  	end
  end

  def assign
    @user = User.find(params[:id])
    @user.update!(admin: true)
    redirect_to users_path
  end

  def revoke
    @user = User.find(params[:id])
    @user.update!(admin: false)
    redirect_to users_path

  def show
    @user = User.find(params[:id])
  end

  private
  	def user_params
  		params.require(:user).permit(:email, :first_name, :last_name, :school_name, :internship_year)
  	end

end
