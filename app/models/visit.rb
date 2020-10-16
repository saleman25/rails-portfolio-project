class Visit < ApplicationRecord
    belongs_to :user
    belongs_to :vacation


def self.has_been
    where(have_you_been_there: true)
end 

def self.has_not_been
   where(have_you_been_there: false)
end 

scope :have_you_been_there, -> {where(have_you_been_there: true)}
scope :have_you_been_there, -> {where(have_you_been_there: false)}


end
