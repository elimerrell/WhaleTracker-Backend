class Sighting < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :whale_sightings
end
