class SessionsController < ApplicationController

  def new
  end

  def create
    photographer = Photographer.find_by(username: params[:username])
    if photographer && photographer.authenticate(params[:password])
      session[:photographer_id] = photographer.id
      redirect_to welcome_index_path
    else
      flash[:errors] = ["Invalid username or password"]

    end
  end

  def destroy
    session[:photographer_id] = nil
    redirect_to welcome_index_path
  end

  private

  def photographer_params
    params.permit(:username, :password)
  end

end
