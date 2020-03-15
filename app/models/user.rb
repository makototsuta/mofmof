class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  accepts_nested_attributes_for :blogs, allow_destroy: true
end
