class ApplicationController < ActionController::Base
  helper_method :get_current_user

  def get_current_user
    @current_user = User.find(session[:user_id]).username
  end

end
