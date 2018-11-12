class SponsorPlanet < ApplicationRecord
  belongs_to :sponsor 
  belongs_to :planet
end
