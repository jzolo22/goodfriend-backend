class Api::V1::WishlistsController < ApplicationController

    def create 
        wishlist = Api::V1::Wishlist.create!(wishlist_params)
        render json: wishlist
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:user_id)
    end
end
