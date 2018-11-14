class SessionsController < ApplicationController

  def new
    @sponsor = Sponsor.new
    @colonist = Colonist.new
  end

  def create
    @user = Colonist.find_by(username: params[:username])
    if @user
      login("colonist")
     else
      @user = Sponsor.find_by(username: params[:username])
      login("sponsor")
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
