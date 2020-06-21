class LaunchpadsController < ApplicationController
    before_action :set_launchpad, only: [:show, :edit, :update, :destroy]

    def index
        @launchpads = Launchpad.all
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
      params.require(:launchpad).permit(:full_name, :status, :locality, :region, :latitude, :longitude, :details, :launchpad_id)
    end

    def set_launchpad
        @launchpad = Launchpad.find(params[:id])
    end
end
