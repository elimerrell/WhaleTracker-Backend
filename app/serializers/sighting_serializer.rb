class SightingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :whale_sighting_id, :species, :quantity, :orca_type, :description, :latitude, :longitude, :location, :photo
end

