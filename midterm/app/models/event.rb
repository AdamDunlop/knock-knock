require 'stripe'

class Event < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :venue
  has_and_belongs_to_many :users 

#  set :publishable_key, ENV['PUBLISHABLE_KEY']
# set :secret_key, ENV['SECRET_KEY']

# Stripe.api_key = "sk_live_yYvatPhubRPEWk0s2mtGxWvK"
end 