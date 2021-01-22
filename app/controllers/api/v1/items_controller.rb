class Api::V1::ItemsController < ApplicationController

    def create
        item = Api::V1::Item.create(item_params)
        render json: {item: Api::V1::ItemSerializer.new(item)}
    end

    private

    def item_params
        params.require(:item).permit(:wishlist_id, :name, :link, :purchased)
    end
end
