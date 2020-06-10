class LaunchesController < ApplicationController

    before_action :launches_params, only: [:show, :edit, :update, :destroy]

    def index
        @launches = Launche.all
    end

    def show
    end

    def new
        @launche = Launche.new
    end

    def create
        launche = Launche.create(launches_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
  
    def launches_params
      params.require(:launche).permit(:name, :details, :launch_date_utc, :static_fire_utc, :launch_illustration, :launch_1, :launch_2, :success, :rocket_id, :launchpad_id)
    end
end
