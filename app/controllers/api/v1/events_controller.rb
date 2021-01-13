class Api::V1::EventsController < ApplicationController

    def index 
        events = Api::V1::Event.all 
        render json: events
    end
end
