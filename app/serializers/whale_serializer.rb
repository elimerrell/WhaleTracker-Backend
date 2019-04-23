class WhaleSerializer < ActiveModel::Serializer
  attributes :id, :commmon_name, :genus, :species, :description, :range, :behaviors
end
