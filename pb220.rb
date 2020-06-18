require 'httparty'

class Pb2020
	include HTTParty
	base_uri="https://api.846policebrutality.com/api/incidents"
	
	def incidents
		self.class.get('/incidents.json')
	end
	
end

pb_incidents = Pb2020.new

pb_incidents.incidents.each do |incident|
	puts incident
end