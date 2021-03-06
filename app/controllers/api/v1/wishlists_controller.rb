class Api::V1::WishlistsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create 
        wishlist = Api::V1::Wishlist.create!(wishlist_params)
        render json: wishlist
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:user_id)
    end
end
