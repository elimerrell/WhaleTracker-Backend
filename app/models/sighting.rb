class Sighting < ApplicationRecord
    belongs_to :user
    has_many :whale_sightings
end
