class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

  def login(user_type)
    if (@user && @user.authenticate(params[:password]))
      session[:id] = @user.id
      session[:type] = user_type
      session[:first_name] = @user.first_name
      if flash.notice
        flash.notice.clear
      end
      redirect_to planets_path
    else
      flash.notice = "No user found with that username/password combination."
      render :new
    end
  end

  def current_user
   if session[:id]
     if session[:type] == "sponsor"
       Sponsor.find(session[:id])
     elsif session[:type] == "colonist"
       Colonist.find(session[:id])
     end
   end
  end


  def logged_in?
    !!current_user
  end

  #NOT WORKING ---------------------------------
  def authorized
   if !logged_in?
     redirect_to login_path
   end
  end
  #NOT WORKING ---------------------------------

  def authorized_for_user(user)
    authorized
    if current_user != user
      redirect_to current_user
    end
  end

  def unspecified_path
    redirect_to planets_path
  end
end
