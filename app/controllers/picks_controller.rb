class PicksController < ApplicationController

		def index
			respond_with Pick.all

		end

		def new
			#users will be able 
			@pick = Pick.new
			
		end

		def create
			#users 
			
		end

		def show
			
		end

end
