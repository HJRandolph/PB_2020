require 'rubygems'
require 'httparty'

class PoliceBrutality
	include HTTParty
	base_uri "https://api.846policebrutality.com/api/"
	
	def incidents
		self.class.get('/incidents')
	end
	
end

#police_resty = PoliceBrutality.new

#puts police_resty.incidents

#police_resty.incidents["meta"].each do |m|
#		puts "#{m[0]}: #{m[1]} \n\n"
		
#	end

#	police_resty.incidents["data"].each do |d|
#		puts "#{d["city"]}, #{d["state"]}" 
#		puts "#{d["title"]}"
		
#		d["links"].each do |l|
#			puts "#{l[0..-1]}" 
#		end
#		puts
#		puts d[1][i]["city"] + ", " + d[1][i]["state"]
#	end

	

