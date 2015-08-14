class Comedian < ActiveRecord::Base
  has_many :events
  # geocoded_by :location
  # after_validation :geocode
end