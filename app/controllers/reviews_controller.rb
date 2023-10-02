class ReviewsController < ApplicationController
    before_action :check_authen
    def create
        # movie_id because of nested route
        @movie = Movie.find(params[:movie_id])
        @user = current_user
        # build sets the movie_id foreign key automatically
        # @review = @movie.reviews.build(params[:review])
        @review = Review.new
        @review.comment = params[:comment]["{:class=>\"form-control\"}"]
        @review.potatoes = params[:potatoes]
        @review.movie = @movie
        @review.user = @user
        

        if @review.save
            flash[:notice] = 'Review successfully created.'
            redirect_to(movie_reviews_path(@movie))
        else
            render :action => 'new'
        end
    end
        
    def new
        # movie_id because of nested route
        @movie = Movie.find(params[:movie_id])
        # new sets movie_id foreign key automatically
        @review ||= @movie.reviews.new
        @review = @review || @movie.reviews.new
    end




    def show
        id = params[:id] # retrieve movie ID from URI route
        @review = Review.find(id) # look up movie by unique ID
        # will render app/views/movies/show.<extension> by default
    end
    
    def index
        @id = params[:movie_id] 
        @reviews = Review.where(movie_id: @id)
    end


    def destroy
    end

  

    # private

    # def check_authen
    # if not user_signed_in?
    #     redirect_to(root_path)
    # end
    # end

    # def movie_params
    # params.require(:).permit(:title, :rating, :description, :release_date)
    # end

  end