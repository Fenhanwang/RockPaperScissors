class PlaygamesController < ApplicationController
	def index
		@result = ["rock", "scissors", "paper"].sample
		decide = { "rock"=>"scissors", "scissors"=>"paper","paper"=>"rock" }
		@flag = (decide[params[:sign]] == @result) ? 1 : 0
		@tie = params[:sign].to_s == @result ? "tie" : "nottie"
		respond_to do |format|
			format.html { render :index }
			format.js
		end
	end
end
