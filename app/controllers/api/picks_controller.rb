module API

	class PicksController < ApplicationController

		respond_to :json

		def index
			respond_with Pick.all

			
		end
	end

end