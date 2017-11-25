class AircraftsController < ApplicationController

	def new
		@aircraft = Aircraft.new
	end

	 def index
        @aircraft = Aircraft.all
    end

	def create
		@aircraft = Aircraft.new(aircraft_params)
		if @aircraft.save
			flash[:notice] = "Article was successfully saved"
			redirect_to aircraft_path(@aircraft)
		else
			render 'new'
		end
	end

	def show
		@aircraft = Aircraft.find(params[:id])
		
	end

	private

	def aircraft_params
		params.require(:aircraft).permit(:aircraft_type, :description)
	end

end