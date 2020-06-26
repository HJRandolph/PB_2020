

class PoliceBrutalitiesController < ApplicationController

 # before_action :set_police_brutality, only: [:show, :edit, :update, :destroy]
	$police_brutalities = HTTParty.get("https://api.846policebrutality.com/api/incidents", :headers =>{'Content-Type' => 'application/json'} )

  # GET /police_brutalities
  # GET /police_brutalities.json
  def index
	i = $police_brutalities["data"].count
	@random_b = $police_brutalities["data"][rand(0..i)]
  end

  def show


  end
	
end

