class AircraftsController < ApplicationController

	def new
		@aircraft = Aircraft.new
	end

	 def index
        @aircraft = Aircraft.all
    end

	def create
		@aircraft = Aircraft.new(aircraft_params)
		@aircraft.save
		redirect_to aircraft_path(@aircraft)
	end

	private

	def aircraft_params
		params.require(:aircraft).permit(:aircraft_type, :description)
	end

end