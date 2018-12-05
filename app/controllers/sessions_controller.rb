class SessionsController < ApplicationController

  def new
  end

  def create
    photographer = Photographer.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to studios_path
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
