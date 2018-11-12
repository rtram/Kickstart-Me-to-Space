class Trip < ApplicationRecord
  belongs_to :colonist
  belongs_to :planet
end
