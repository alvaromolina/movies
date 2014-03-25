class MoviesController < ApplicationController
	skip_before_filter :verify_authenticity_token 
	def index


		@movies = Movie.all
	end

	def new
		@movie = Movie.new

	end

	def edit
		@movie = Movie.find(params[:id])

	end

	def update
		@movie = Movie.find(params[:id])
		@movie.name = params[:movie][:name]

		if @movie.save 
			redirect_to '/', notice: 'La pelicula ha sido actualizada exitosamente'
		else
			render 'edit'
		end	

	end


	def create
		@movie = Movie.new
		@movie.name = params[:movie][:name]


		if @movie.save 
			redirect_to '/', notice: 'La pelicula ha sido creada exitosamente'
		else
			render 'new'
		end
		
	end



end
