class LocationSerializer < ActiveModel::Serializer
  has_many :resources

  attributes :id, :name, :description, :longitude, :latitude
end
