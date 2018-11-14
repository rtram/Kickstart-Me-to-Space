class ApplicationController < ActionController::Base
  helper_method :get_current_user

  # def get_current_user
  #   @current_user = Sponsor.find(session[:sponsor_id]).first_name
  # end

end
