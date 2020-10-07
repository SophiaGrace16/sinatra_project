class Player < ActiveRecord::Base
    has_many :characters
    has_secure_password 

    validates :name, :username, :password, presence: true
    validates :name, :username, uniqueness: true
end