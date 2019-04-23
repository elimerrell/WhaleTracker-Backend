class SightingSerializer < ActiveModel::Serializer
  attributes :id, :whale_sighting_id, :title, :description, :photo
end
