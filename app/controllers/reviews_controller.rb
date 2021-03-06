class ReviewsController < ApplicationController
  before_action :find_book
  before_action :authenticate_user!, only: [:new]
  def new
    @review = Review.new
  end 

  def create
    @review = Review.new(review_params)
    @review.book_id = @book.id
    @review.user_id = current_user.id 
    @review.user_name = current_user.first_name
    @review.user_picture_url = current_user.picture_url
    if @review.save
      @event = Event.new
      @event.book_id = @book.id
      @event.user_id = current_user.id
      @event.review = true
      @event.review_id = @review.id
      @event.save
      redirect_to book_path(@book)
    else
      render 'new'
    end 
  end 

private 

  def review_params
    params.require(:review).permit(:rating, :comment)    
  end 

  def find_book
    @book = Book.find(params[:book_id])
  end 
end
