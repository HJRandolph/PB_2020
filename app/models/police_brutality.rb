require 'rubygems'
require 'httparty'
require 'json'

class PoliceBrutality < ApplicationRecord

	include HTTParty
	base_uri "https://api.846policebrutality.com/api/"
	
	def incidents
		self.class.get('/incidents')
	end
	




end
