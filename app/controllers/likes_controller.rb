class LikesController < ApplicationController
  before_action :find_book
  before_action :authenticate_user!, only: [:new]
  def new
    @like = like.new
  end 

  def create
    @like = Like.new
    @like.book_id = @book.id
    @like.user_id = current_user.id
    @like.save
    if @like.save
      redirect_to books_path
    end 
  end 


private 

  def find_book
    @book = Book.find(params[:book_id])
  end 



end
