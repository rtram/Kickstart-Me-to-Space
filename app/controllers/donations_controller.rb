class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new
    @donation.planet_id = donation_params[:planet_id]
    @donation.amount = donation_params[:amount]
    @donation.sponsor_id = session[:id]
    if @donation.sponsor_id.nil? #BECAUSE NOT LOGGED IN
      flash.notice = "Please Login as a Sponsor to Donate"
      redirect_to login_path
    elsif @donation.save
      if flash.notice
        flash.notice.clear
      end
      redirect_to planet_path(Planet.find(@donation.planet_id))
    else
      render :new
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:planet_id, :amount)
  end

end
