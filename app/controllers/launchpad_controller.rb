class LaunchpadController < ApplicationController
    before_action :launchpad_params, only: [:show, :edit, :update, :destroy]

    def index
        @launchpad = Launchpad.all
    end

    def show
    end

    def new
        @launchpad = Launchpad.new
    end

    def create
        launchpad = Launchpad.create(launchpad_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
  
    def launchpad_params
      params.require(:launchpad).permit(:full_name, :status, :locality, :region, :latitude, :longitude, :details)
    end
end
