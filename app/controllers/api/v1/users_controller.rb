class Api::V1::UsersController < ApplicationController

    def index 
        users = Api::V1::User.all 
        render json: users
    end

    def show 
        user = Api::V1::User.find(params[:id])
        render json: user
    end

end
