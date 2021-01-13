class Api::V1::UsersController < ApplicationController

    def index 
        users = Api::V1::User.all 
        render json: users
    end
end
