class Sponsor < ApplicationRecord
  has_many :donations
  has_many :planets, through: :donations

  validates :username, presence: true ,uniqueness: {case_sensitive:false}
  validates :password, presence: {case_sensitive:false}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :net_worth, presence: true
  validates :goal, presence: true

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

#Top Ten Generous Stat----------------------------------------------------------
  def donation_objects
    self.donations.collect {|donation| donation[:amount]}
  end

  def donation_sum
    self.donation_objects.sum
  end

  def self.donations_sum_arr
    self.all.collect {|sponsor| {sponsor.full_name => sponsor.donation_sum}}
  end

  def self.sorted_donations_sum_arr
    self.donations_sum_arr.sort! {|a, b| a.values[0] <=> b.values[0]}
  end

  def self.top_ten_overall
    self.sorted_donations_sum_arr.reverse![0..9]
  end

#Top Ten Most Stingy Stat-------------------------------------------------------
  def self.bottom_ten_overall
    self.sorted_donations_sum_arr[0..9]
  end

#Net Worth Stats----------------------------------------------------------
  def self.net_worth_arr
    self.all.sort_by {|sponsor| sponsor[:net_worth]}
  end

  def self.richest_sponsor
    self.net_worth_arr.last
  end

  def self.poorest_sponsor
    self.net_worth_arr.first
  end

end
