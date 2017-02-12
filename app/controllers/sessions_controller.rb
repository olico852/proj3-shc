class SessionsController < ApplicationController
  def new
  end

  def create

    caregiver = Caregiver.find_and_authenticate(user_params)
    user = User.new
    user.usertypes = caregiver
    user.save

    fammember = Fammember.find_and_authenticate(user_params)
    user = User.new
    user.usertypes = fammember
    user.save

    if user
      session[:user_id] = user.id
      flash[:success] = "User logged in!!"
      redirect_to '/'
    else
      flash[:danger] = "Credentials Invalid!!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil  #clear the session id
    flash[:success] = "User logged out!!"
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
