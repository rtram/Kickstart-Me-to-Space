class Sponsor < ApplicationRecord
  has_many :donations
  has_many :planets, through: :donations
end
