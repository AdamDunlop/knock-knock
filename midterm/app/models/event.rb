class Event < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :venue
  has_and_belongs_to_many :users 

  
end 