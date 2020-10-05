class User < ActiveRecord::Base
    has_many :characters 
    has_secure_password
    # || has_many_stories
end