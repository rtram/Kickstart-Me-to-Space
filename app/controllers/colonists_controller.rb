class ColonistsController < ApplicationController

  def index
    @colonists = Colonist.all
  end

  def show
    @colonist = Colonist.find(params[:id])
  end

end
