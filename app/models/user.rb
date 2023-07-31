class User < ApplicationRecord
    has_many :blogapps
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
  end
 
  
    
 
  