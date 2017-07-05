require "pry"
module Api
  module V1
    class CocktailsController < ApplicationController
      before_action :set_cocktail, only: [:show, :update, :destroy]

      def index
        render json: Cocktail.all
      end

      def show
        render json: Cocktail.find(params[:id])
      end

      def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save 
          render json: @cocktail
          
        else
          render json: @cocktail.errors, status: :unprocessable_entity
        end
      end

      def edit

      end

      def update

      end

      def destroy

      end

    private 

      def set_cocktail
        @cocktail = Cocktail.find(params[:id])
      end

      def cocktail_params
        params.permit(:name, :description)
      end
    end
  end
end
