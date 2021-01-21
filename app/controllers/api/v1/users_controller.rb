class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        # byebug
        render json: { user: Api::V1::UserSerializer.new(current_user) }, status: :accepted
      end

    def index 
        users = Api::V1::User.all 
        render json: users, except: [:created_at, :updated_at]
    end

    def show 
        user = Api::V1::User.find(params[:id])
        render json: user
    end

    def create 
        # byebug
        user = Api::V1::User.create!(user_params)
        if user.valid?
            @token = encode_token(user_id: user.id)
            render json: {user: Api::V1::UserSerializer.new(user), jwt: @token }, status: :created 
        else 
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update 
        user = Api::V1::User.find(params[:id])
        user.update!(user_params)
        render json: user
    end


    private
    def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :birthday, :address, :partner_name, :partner_birthday, :venmo_handle, :flowers, :profile_picture)
    end

end
