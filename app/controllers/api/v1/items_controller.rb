class Api::V1::ItemsController < ApplicationController

    def index
        items = Api::V1::Item.all 
        render json: items, except: [:created_at, :updated_at]
    end

    def create
        item = Api::V1::Item.create(item_params)
        render json: {item: Api::V1::ItemSerializer.new(item)}
    end

    def destroy 
        item = Api::V1::Item.find(params[:id])
        item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:wishlist_id, :name, :link, :purchased)
    end
end
