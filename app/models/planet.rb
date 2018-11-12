class Planet < ApplicationRecord
  has_many :trips
  has_many :colonists, through: :trips
  has_many :donations
  has_many :sponsors, through: :donations
end
