class Vacation < ApplicationRecord
    has_many :users 
    has_many :visits 
    validates_presence_of :country, :city, :enjoyment_rating, :duration, :solo_traveler
end
