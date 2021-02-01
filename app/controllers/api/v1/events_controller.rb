class Api::V1::EventsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :update, :destroy]

    def index 
        events = Api::V1::Event.all 
        render json: events
    end

    def create
        event = Api::V1::Event.create!(event_params)
        render json: event
    end

    def update 
        event = Api::V1::Event.find(params[:id])
        event.update(event_params)
        render json: event
    end

    def destroy 
        event = Api::V1::Event.find(params[:id])
        event.destroy
    end

    private
    def event_params
        params.require(:event).permit(:user_id, :title, :date, :type, :annual, :description, :celebrator_id)
    end
end
