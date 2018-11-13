class Colonist < ApplicationRecord
  has_many :trips
  has_many :planets, through: :trips

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
