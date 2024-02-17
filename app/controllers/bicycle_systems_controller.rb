class BicycleSystemsController < ApplicationController
    def show
        set_bicycle_system
    end

    private
    def set_bicycle_system
        @bicycle_system = BicycleSystem.find_by_id(params[:id])
    end
end
