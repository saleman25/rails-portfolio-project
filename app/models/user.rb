class User < ApplicationRecord
    has_many :vacations
    has_many :visits, through: :vacations 
    has_secure_password
    validates :name, :username, :email, :password, presence: true
    validates_uniqueness_of :username
end
