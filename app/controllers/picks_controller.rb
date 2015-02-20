class PicksController < ApplicationController

		def index
			respond_with Pick.all

		end

		def new
			@pick = Pick.new 
			@teams = Team.all 
			@user_leagues = current_user.leagues	
			@league = League.find(params[:league_id])
		end

		def create 
			@pick = Pick.new(pick_params)
			@pick.user = current_user
			@pick.league =League.find(params[:league_id])
			if @pick.save 
				redirect_to user_path(current_user)
			else
			 redirect_to new_league_pick
			end

		end


		def pick_params
			# these are the paramaters required for a pick
			params.require(:pick).permit(:team_name, :league_name, :week)
		end

		def show
			
		end



end
