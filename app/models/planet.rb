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

  def unique_donators
    self.sponsors.uniq
  end

  def donations_per_donator
    donation_arr = []
    unique_donators.each do |sponsor|
      sponsor_donations = 0
      self.donations.each do |donation|
        if donation.sponsor_id == sponsor.id
          sponsor_donations += donation.amount
        end
      end
      donation_arr << {sponsor.full_name => sponsor_donations}
    end
    donation_arr
  end

  def top_ten_sponsors
    sorted_arr = self.donations_per_donator.sort!{|a, b| a.values[0] <=> b.values[0]}
    top_ten_arr = sorted_arr[0...10]
    #STOPPED HERE
    binding.pry
  end
end
