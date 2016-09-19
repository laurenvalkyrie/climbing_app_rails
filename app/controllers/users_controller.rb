class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(current_user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :current_password, :password_confirmation)
  end
end
