class Vacation < ApplicationRecord
    belongs_to :user 
    has_many :visit 
    validates_presence_of :country, :city, :enjoyment_rating, :duration, :solo_traveler
end
