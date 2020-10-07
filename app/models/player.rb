class Player < ActiveRecord::Base
    has_many :characters
    has_secure_password 
end