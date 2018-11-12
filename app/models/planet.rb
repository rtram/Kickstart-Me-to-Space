class Planet < ApplicationRecord
  has_many :trips
  has_many :colonists, through: :trips
  has_many :donations
  has_many :sponsors, through: :donations

  def funding_gap
    donation_amounts_arr = self.donations.collect {|donation_obj| donation_obj.amount}
    current_donations_int = donation_amounts_arr.sum
    self.funding_goal - current_donations_int
  end
end
