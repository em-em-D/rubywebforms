class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Refill!"
      redirect_to @user #another redirect problem#
    else
      render 'users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :email, :password,:password_confirmation)
  end
end
