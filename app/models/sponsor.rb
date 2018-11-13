class Sponsor < ApplicationRecord
  has_many :donations
  has_many :planets, through: :donations

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
