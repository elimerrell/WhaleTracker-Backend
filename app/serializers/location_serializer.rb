class LocationSerializer < ActiveModel::Serializer
  attributes :id, :sighting_id, :latitude, :longitude, :landmark
end
