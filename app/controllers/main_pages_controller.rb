class MainPagesController < ApplicationController
  
  
  def index
	@incidents = PoliceBrutality.all
  end

  
end
