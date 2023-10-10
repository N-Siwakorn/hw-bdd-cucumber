class ReviewsController < ApplicationController
    before_action :check_authen
    def create
        Review.create!(review_params)
        flash[:notice] = 'Review successfully created.'
        redirect_to(movie_reviews_path(params[:movie_id]))
    end
        
    def new
        @movie = Movie.find(params[:movie_id]) 
    end
    
    def index
        @reviews = Review.where(movie_id: params[:movie_id] )
    end

    private
    def review_params
        {
        "comment" => params[:comment],
        "potatoes" => params[:potatoes],
        "movie" => Movie.find(params[:movie_id]),
        "user" => current_user
        }
      end
  end

