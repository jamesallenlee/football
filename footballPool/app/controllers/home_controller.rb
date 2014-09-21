class HomeController < ApplicationController

	def index
		@weeks = Week.all
	end
end
