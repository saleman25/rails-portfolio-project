class Visit < ApplicationRecord
    belongs_to :user
    belongs_to :vacation


def self.has_been
    where(have_you_visited_before: true)
end 

def self.has_not_been
   where(have_you_visited_before: false)
end 


end
