class Donation < ApplicationRecord
  belongs_to :sponsor
  belongs_to :planet

  validates :sponsor_id, presence: true
  validates :planet_id, presence: true
  validates_numericality_of :amount, :only_integer => true, :greater_than_or_equal_to => 0
end
