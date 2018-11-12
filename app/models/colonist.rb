class Colonist < ApplicationRecord
  has_many :colonist_planets
  has_many :planets, through: :colonist_planets
end
