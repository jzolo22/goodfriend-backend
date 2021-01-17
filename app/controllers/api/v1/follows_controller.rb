class Api::V1::FollowsController < ApplicationController

    def create
        follow = Api::V1::Follow.create!(follow_params)
        render json: { follow: Api::V1::FollowSerializer.new(follow) }, status: :accepted
    end


    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
