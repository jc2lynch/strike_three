class LeaguesController < ApplicationController

	def index
		# this will show all of the leagues that exist
		@leagues = League.all
		
	end

	def new
		# making a new league that users can eventually join
		@league = League.new
		
	end

	def create
		@league = League.new(league_params)
			if @league.save
				redirect_to users_path
			else
				render :new
			end
		
	end


	def join
		#some code to add a user to a league
		# creating a variable @league and setting it equal to this 
		@league = League.find(params[:id])
		@league.users.push(current_user)
		@league.save
		redirect_to league_path(@league)	
	end

	def destroy
		# remove a league from existance
	end

	def show
		# show all the members of a league and all of their picks
		@league = League.find(params[:id])
		
	end

	private

	def league_params
		params.require(:league).permit(:name)
	end

end

