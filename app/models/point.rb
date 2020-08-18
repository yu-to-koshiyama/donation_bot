class Point < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  validates  :name, :address, presence: true
end
