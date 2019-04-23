class WhaleSighting < ApplicationRecord
    belongs_to :sighting 
    belongs_to :whale
end
