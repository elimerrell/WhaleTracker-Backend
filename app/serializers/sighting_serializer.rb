class SightingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :whale_sighting_id, :species, :quantity, :description, :latitude, :longitude, :location, :photo
end

