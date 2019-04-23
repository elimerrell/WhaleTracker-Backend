class Api::V1::WhaleSightingsController < ApplicationController
    before_action :find_whale_sighting, only: [:update]
    
    def index
        @whale_sightings = WhaleSighting.all
        render json: @whale_sightings
    end
    
    def update
        @whale_sighting.update(whale_sighting_params)
        if @whale_sighting.save
        render json: @whale_sighting, status: :accepted
        else
        render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def whale_sighting_params
        params.permit(:sighting_id, :whale_id)
    end
    
    def find_whale_sighting
        @whale_sighting = whale_sighting.find(params[:id])
    end
end
