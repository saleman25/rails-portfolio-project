class User < ApplicationRecord
    has_many :vacation 
    has_many :visit, through: :vacation 
    has_secure_password
    validates :name, :username, :email, :password, presence: true
    validates_uniqueness_of :username
end
