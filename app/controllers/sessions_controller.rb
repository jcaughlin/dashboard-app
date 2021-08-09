class SessionsController < ApplicationController
  
  def create
    user = User.find_by(login: params[:login])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path(user.id), notice: "Logged in successfully"
    else
      flash[:alert] = "Invalid Email or Password"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out"
  end
end