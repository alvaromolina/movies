class MoviesController < ApplicationController
	skip_before_filter :verify_authenticity_token 
	def index
		@movies = Movie.all
	end

	def new

	end

	def create
		@movie = Movie.new
		@movie.name = params[:movie][:name]
		@movie.save
	end



end
