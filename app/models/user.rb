class User < ApplicationRecord
    has_many :vacations 
    has_many :locations through: :vacations 
end
