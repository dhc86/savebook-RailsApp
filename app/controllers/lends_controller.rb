class LendsController < ApplicationController
  include LendsHelper
  
  before_action :find_book
  before_action :authenticate_user!, only: [:new]
  def new
    @lend = Lend.new
  end 

  def create
    @lend = Lend.new
    @lend.book_id = @book.id
    @lend.user_id = current_user.id 
    @request = Request.where(book_id: @book.id)
    @lend.borrower_id = @request[0].borrower_id
    @lend.due = Date.today + 7
    @lend.check_out = Date.today
    if @lend.save
      @event = Event.new
      @event.book_id = @book.id
      @event.user_id = current_user.id
      @event.lend = true
      @event.lend_id = @lend.id
      @event.save
      update_request
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end 
  end 

private 
  
  def find_book
    @book = Book.find(params[:book_id])
  end 

end


