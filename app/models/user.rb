class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  accepts_nested_attributes_for :blogs, allow_destroy: true
  validates :property, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :year, presence: true
end
