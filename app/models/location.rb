class Location < ApplicationRecord
    belongs_to :user
    belongs_to :vacation
end
