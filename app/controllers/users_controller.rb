class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if verify_recaptcha(model: @user) && @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "session/new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
