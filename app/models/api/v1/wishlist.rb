class Api::V1::Wishlist < ApplicationRecord
    belongs_to :user
    has_many :items
end
