class Api::V1::User < ApplicationRecord
    has_secure_password

    has_many :followed_users, foreign_key: "follower_id", class_name: "Api::V1::Follow"
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: "followee_id", class_name: "Api::V1::Follow"
    has_many :followers, through: :following_users

    has_many :events
    
    has_one :wishlist
    has_many :items, through: :wishlists

    has_one_attached :profile_picture
end
