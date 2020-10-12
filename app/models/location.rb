class Location < ApplicationRecord
    belongs_to :users
    belongs_to :vacations
end
