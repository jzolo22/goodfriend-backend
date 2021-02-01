class Api::V1::FollowsController < ApplicationController

    def create
        follow = Api::V1::Follow.create!(follow_params)
        render json: { follow: Api::V1::FollowSerializer.new(follow) }, status: :accepted
    end

    def destroy 
        id_array = params[:id].split("&")
        follower_id = id_array[0]
        followee_id = id_array[1]
        follow = Api::V1::Follow.find_by(follower_id: follower_id, followee_id: followee_id)
        follow.destroy 
    end

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id, :status)
    end
end
