class MoviesController < ApplicationController
     before_action :find_movie, only: [:show, :edit, :update, :destroy]
 	before_action :authenticate_user!, only: [:new, :edit]

	def index
		if params[:genre].blank?
			@movies = Movie.all.order("created_at DESC")
		else
			@genre_id = Genre.find_by(name: params[:genre]).id
			@movies = Movie.where(:genre_id => @genre_id).order("created_at DESC")
		end
	end


	def show
	    if @movie.reviews.blank?
			@average_review = 0
		else
			@average_review = @movie.reviews.average(:rating).round(2)
		end
	end

 	def new
	    @movie=current_user.movies.build
	    @genres = Genre.all.map{ |g| [g.name, g.id] }
 	end

 	def create
 	    @movie=current_user.movies.build(movie_params)
 	    @movie.genre_id = params[:genre_id]
 	    
 	    if @movie.save
 	    	flash[:info] = "Movie created"
 	        redirect_to root_path
 	    else
 	    	@movie=current_user.movies.build
	    	@genres = Genre.all.map{ |g| [g.name, g.id] }
	    	flash[:danger] = "Form cotaints errors. Movie was not created"
 	        render 'new'
 	    end
 	end

	def edit
		 @genres = Genre.all.map{ |c| [c.name, c.id] }
	end

	def update
		@movie.genre_id = params[:genre_id]
	    if @movie.update(movie_params)
	        redirect_to movie_path(@movie)
	    else
	        render 'edit'
	    end
	end

	def destroy
		@movie.destroy
		redirect_to root_path
	end

	private

		def movie_params
		    params.require(:movie).permit(:title,:description,:productionCompany, :genre_id, :movie_img)
		end

 		def find_movie
			@movie = Movie.find(params[:id])
 		end

end