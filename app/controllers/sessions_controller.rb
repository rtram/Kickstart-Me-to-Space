class SessionsController < ApplicationController

  def new
    @sponsor = Sponsor.new
    @colonist = Colonist.new
  end

  def create
<<<<<<< HEAD
    @sponsor = Sponsor.find_by(username: params[:sponsor][:username])
    if (@sponsor && @sponsor.authenticate(params[:sponsor][:password]))
      session[:sponsor_id] = @sponsor.id
      if flash.notice
        flash.notice.clear
      end
      redirect_to planets_path
=======
    @user = Colonist.find_by(username: params[:username])
    if @user
      if (@user && @user.authenticate(params[:password]))
        session[:id] = @user.id
        session[:type] = "colonist"
        session[:first_name] = @user.first_name
        if flash.notice
          flash.notice.clear
        end
        redirect_to planets_path
      end
>>>>>>> 68e65c741f71588cbb94d268b793212e8964b0c2
    else
      @user = Sponsor.find_by(username: params[:username])
      if (@user && @user.authenticate(params[:password]))
        session[:id] = @user.id
        session[:type] = "sponsor"
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
  end

  def destroy
      session.clear
      redirect_to login_path
  end

<<<<<<< HEAD

=======
>>>>>>> 68e65c741f71588cbb94d268b793212e8964b0c2
end
