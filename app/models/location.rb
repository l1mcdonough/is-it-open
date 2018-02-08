class Location < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode
  def full_address
    [address, city, state, country].compact.join(', ')
  end
end
