class Vacation < ApplicationRecord
    has_many :users, through: :visits
    has_many :visits 
    validates_presence_of :country, :city, :enjoyment_rating, :duration, :solo_traveler
    # delegate :username, to :users, prefix: true 
end
