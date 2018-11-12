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
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def sponsor_params
    params.require(:sponsors).permit(:first_name, :last_name, :net_worth, :goal)
  end

end
