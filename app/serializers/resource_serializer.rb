class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :category, :status, :description, :icon_url
end
