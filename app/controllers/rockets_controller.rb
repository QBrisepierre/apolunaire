class RocketsController < ApplicationController
    before_action :rockets_params, only: [:show, :edit, :update, :destroy]

    def index
        @rockets = Rocket.all
    end

    def show
    end

    def new
        @rocket = Rocket.new
    end

    def create
        rocket = Rocket.create(rockets_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
  
    def rockets_params
      params.require(:rocket).permit(:name, :customer, :engine, :engine_version, :number_engine, :propergol_1, :propergol_2, :landing_legs, :activity, :stage, :booster, :description, :height, :diameter, :mass, :image)
    end
end
