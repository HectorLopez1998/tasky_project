class User < ActiveRecord::Base 
    has_many :tasks

    has_many :categories, through: :task

    
    has_secure_password
end