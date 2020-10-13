class Vacation < ApplicationRecord
    belongs_to :user 
    has_many :location 
    validates_presence_of :city, :enjoyment_rating, :duration, :solo_traveler
end
