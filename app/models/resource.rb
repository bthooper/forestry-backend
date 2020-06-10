class Resource < ApplicationRecord
  belongs_to :location

  validates :category, presence: true
  validates_inclusion_of :category, :in => ['Standing timber', 'Rough cut lumber', 'Milled lumber']
  validates :status, presence: true
  validates_inclusion_of :status, :in => ['Ready for harvest', 'Ready for market', 'Ready for mill']
  validates :description, presence: true
  validates :icon_url, presence: true

end
