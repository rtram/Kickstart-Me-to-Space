class ApplicationController < ActionController::Base
  helper_method

  def unspecified_path
    redirect_to planets_path
  end
end
