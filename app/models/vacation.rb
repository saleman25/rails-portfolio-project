class Vacation < ApplicationRecord
    has_many :users, through: :visits
    has_many :visits 
    validates_presence_of :country, :city, :duration
    
end
