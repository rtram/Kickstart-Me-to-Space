class Sponser < ApplicationRecord
  has_many :sponser_planets
  has_many :planets, through: :sponser_planets
end
