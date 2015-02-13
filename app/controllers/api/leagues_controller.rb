module API
	class LeaguesController < ApplicationController

	end

	def index
		@leagues = League.all
		
	end

	def new
		@league = League.new
		
	end

	def create
		@league = League.new(user_params)
			if @league.save
				redirect_to users_path
			else
				render :new
			end
		
	end

	def destroy
		
	end

	def show
		
	end
end
