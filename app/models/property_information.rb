class PropertyInformation < ApplicationRecord
  has_many :add_stations, dependent: :destroy
  accepts_nested_attributes_for :add_stations, allow_destroy: true
  validates :property, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :year, presence: true
end
