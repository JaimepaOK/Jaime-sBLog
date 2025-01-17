class User < ApplicationRecord
    has_many :posts
    has_many :comments


 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates_presence_of :username, :password
    validates_confirmation_of :password
    validates :username, presence: true, uniqueness: true
    validates :username, length: {minimum: 4, maximum: 30}
    validates :password, length: {minimum: 4, maximum: 20}
    validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false },
 format: { with: VALID_EMAIL_REGEX }


 
end
