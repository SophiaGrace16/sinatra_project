class DM < ActiveRecord::Base
    has_many :stories 
    has_secure_password
end


#Validations WATCH PROJECT PREP