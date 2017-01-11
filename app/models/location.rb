class Location < ApplicationRecord
  # Looks like that code below is depricated. In favor of strong parameters.
  # attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
