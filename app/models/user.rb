class User < ApplicationRecord
    has_many :vacation 
    has_many :location, through: :vacation 
end
