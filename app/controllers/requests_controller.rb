class RequestsController < ApplicationController
  before_action :find_book
  before_action :authenticate_user!, only: [:new]
  def new
    @request = Request.new
  end 

  def create
    @request = Request.new
    @request.book_id = @book.id
    @request.borrower_id = current_user.id 
    @request.owner_id = @book.user_id
    if @request.save
      redirect_to book_path(@book)
    else
      render 'new'
    end 
  end 

private 

  def find_book
    @book = Book.find(params[:book_id])
  end 

end
