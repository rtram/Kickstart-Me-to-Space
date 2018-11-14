class ColonistsController < ApplicationController

  def index
    @colonists = Colonist.all
  end

  def show
    @colonist = Colonist.find(params[:id])
  end

  def new
    @colonist = Colonist.new
  end

  def create
    @colonist = Colonist.new(colonist_params)
    if @colonist.save
      session[:id] = @colonist.id
      session[:type] = "colonist"
      session[:first_name] = @colonist.first_name
      redirect_to colonists_thanks_path
    else
      render :new
    end
  end

  def thanks
  end

  def edit
    @colonist = Colonist.find(params[:id])
  end

  def update
    @colonist = Colonist.find(params[:id])
    if @colonist.update(colonist_params)
      redirect_to colonist_path(@colonist)
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

  def colonist_params
    params.require(:colonist).permit(:username, :password, :password_confirmation, :first_name, :last_name, :codename, :age, :profession, :gender, :status)
  end
end
