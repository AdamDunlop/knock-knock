class Venue < ActiveRecord::Base
  has_many :events


end 

  # after_validation :geocode


  # def geocode_address

  #   "#{location}"

  # end
