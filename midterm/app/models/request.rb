class Request < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :venue
end