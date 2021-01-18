class Api::V1::EventsController < ApplicationController

    def index 
        events = Api::V1::Event.all 
        render json: events
    end

    def create
        event = Api::V1::Event.create!(event_params)
        render json: event
    end

    private
    def event_params
        params.require(:event).permit(:user_id, :title, :date, :type, :annual, :description, :celebrator_id)
    end
end
