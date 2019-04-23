class Api::V1::WhalesController < ApplicationController
    before_action :find_whale, only: [:update]
    
    def index
        @whales = Whale.all
        render json: @whales
    end
    
    def update
        @whale.update(whale_params)
        if @whale.save
        render json: @whale, status: :accepted
        else
        render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def whale_params
        params.permit(:common_name, :genus, :species, :description, :range, :behaviors)
    end
    
    def find_whale
        @whale = Whale.find(params[:id])
    end
end
