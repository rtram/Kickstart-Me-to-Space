class Planet < ApplicationRecord
  has_many :colonist_planets
  has_many :colonists, through: :colonist_planets
  has_many :sponsor_planets
  has_many :sponsors, through: :sponsor_planets
end
