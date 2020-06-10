class Location < ApplicationRecord
  has_many :resources

  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true

end
