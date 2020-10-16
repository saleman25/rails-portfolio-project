class User < ApplicationRecord
    has_many :visits
    has_many :vacations, through: :visits 
    has_secure_password
    validates :name, :username, :email, :password, presence: true
    validates_uniqueness_of :username
end
