

class PoliceBrutalitiesController < ApplicationController

  before_action :set_police_brutality, only: [:show, :edit, :update, :destroy]


  # GET /police_brutalities
  # GET /police_brutalities.json
  def index
#	PoliceBrutality.paginate page: params[:page], per_page: 30
	@police_brutalities = HTTParty.get("https://api.846policebrutality.com/api/incidents",
    :headers =>{'Content-Type' => 'application/json'} )

	#@police_brutalities = @police_brutalities.paginate(page: params[:page], per_page: 30)
	
			i = @police_brutalities["data"].count
		@random_b = @police_brutalities["data"][rand(0..i)]
  end


end
