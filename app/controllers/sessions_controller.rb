class SessionsController < ApplicationController

  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.find_by(username: params[:sponsor][:username])
    if @sponsor && @sponsor.authenticate(params[:sponsor][:password])
    session[:sponsor_id] = @sponsor.id
    redirect_to planets_path
    else
      flash.notice = "No user found with that username/password combination."
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
