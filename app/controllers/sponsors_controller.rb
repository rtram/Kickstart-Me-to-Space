class SponsorsController < ApplicationController

  def index
    @sponsors = Sponsor.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
    if @sponsor.save
      session[:id] = @sponsor.id
      session[:type] = "sponsor"
      session[:first_name] = @sponsor.first_name
      redirect_to sponsors_thanks_path
    else
      render :new
    end
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update(sponsor_params)
      redirect_to sponsor_path(@sponsor)
    else
      render :edit
    end
  end

  def destroy
    Sponsor.destroy(params[:id])
    session.clear
    redirect_to sponsors_path
  end

  private

  def sponsor_params
    params.require(:sponsor).permit(:username, :password, :password_confirmation, :first_name, :last_name, :net_worth, :goal)
  end

end
