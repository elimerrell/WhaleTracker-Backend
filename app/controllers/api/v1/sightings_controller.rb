class Api::V1::SightingsController < ApplicationController
    before_action :find_sighting, only: [:update]

    def index
        @sightings = Sighting.all
        render json: @sightings
    end
    
    def create
        @sighting = Sighting.new(sighting_params)
        if @sighting.save
            render json: @sighting, status: :accepted
        else 
            render json: { errors: @sighting.errors.full_messages }, status: :unprocessible_entity
        end 
    end 
   
    def update
      @sighting.update(sighting_params)
      if @sighting.save
        render json: @sighting, status: :accepted
      else
        render json: { errors: @sighting.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
    end
    
    private
    
    def sighting_params
        params.permit(:id, :user_id, :whale_sighting_id, :date, :species, :description, :quantitity, :latitude, :longitude, :location, :photo)
    end
    
    def find_sighting
        @sighting = Sighting.find(params[:id])
    end
end
