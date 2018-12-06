class ApplicationController < ActionController::Base
  helper_method :current_photographer, :logged_in?

  def current_photographer
    if session[:photographer_id]
      Photographer.find(session[:photographer_id])
    else
      Photographer.new
    end
  end

  def logged_in?
    !!current_photographer.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You are not logged in"
      render :js => "window.location = '#{welcome_index_path}'"
    end
  end

  def authorized_for(photographer_id)
    if current_photographer.is_admin? == true
      true
    elsif current_photographer.id != photographer_id.to_i
      flash[:authorized] = "You cannot view a page that does not belong to you"
      redirect_to studios_path
    end
  end
end
