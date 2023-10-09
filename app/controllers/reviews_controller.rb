class ReviewsController < ApplicationController
    before_action :check_authen
    def create
        @movie = Movie.find(params[:movie_id])
        @user = current_user
        
        @review = Review.new
        @review.comment = params[:comment]["{:class=>\"form-control\"}"]
        @review.potatoes = params[:potatoes]
        @review.movie = @movie
        @review.user = @user

        @review.save
        flash[:notice] = 'Review successfully created.'
        redirect_to(movie_reviews_path(@movie))
    end
        
    def new
        @movie = Movie.find(params[:movie_id])   
    end
    
    def index
        @id = params[:movie_id] 
        @reviews = Review.where(movie_id: @id)
    end
  end

