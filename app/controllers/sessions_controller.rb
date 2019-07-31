class SessionsController < ApplicationController
  def new
  end
#log a user in.
  def create
   @user = User.find_by(email: params[:session][:email])
   #@user = User.find_by(password_digest: params[:session][:password_digest])
   @user && @user.authenticate(params[:session][:password])
   if @user
    log_in(@user)
    flash[:success] = 'Log in successful.'
    redirect_to @user #first problem identified#
    else
      flash.now[:danger] = 'The user id you entered does not exist.'
      render 'new'
      #render html:'<strong>HTML String</strong>'
    end
  end

end
