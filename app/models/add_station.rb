class AddStation < ApplicationRecord
  belongs_to :property_information
  validates :property_information, presence: true
end
