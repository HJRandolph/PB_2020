

class PoliceBrutalitiesController < ApplicationController

 # before_action :set_police_brutality, only: [:show, :edit, :update, :destroy]


  # GET /police_brutalities
  # GET /police_brutalities.json
  def index
	@police_brutalities = HTTParty.get("https://api.846policebrutality.com/api/incidents", :headers =>{'Content-Type' => 'application/json'} )
	i = @police_brutalities["data"].count
	@random_b = @police_brutalities["data"][rand(0..i)]
  end

  def show
	@incidents = HTTParty.get("https://api.846policebrutality.com/api/incidents", :headers =>{'Content-Type' => 'application/json'} )
	@police_brutalities = HTTParty.get("https://api.846policebrutality.com/api/incidents", :headers =>{'Content-Type' => 'application/json'} )
  end
	
end
