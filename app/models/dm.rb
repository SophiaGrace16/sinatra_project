class DM < ActiveRecord::Base
    has_many :stories 
    has_secure_password

    validates :name, :username, :password, presence: true
    validates :name, :username, uniqueness: true
end


#Validations WATCH PROJECT PREP