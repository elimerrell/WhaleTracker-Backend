class WhaleSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :genus, :species, :description, :range, :behaviors, :photo
end
