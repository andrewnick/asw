class PagesController < ApplicationController
	before_action :authenticate_user!

	def home
		@greeting = 'Welcome'
	end

	def rsvp
		
	end

	def registry
		
	end

	def location
		
	end
end
