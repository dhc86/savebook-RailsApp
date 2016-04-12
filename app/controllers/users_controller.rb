class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_books = @user.books
    # @user_requests = @user.requests
    @requests_made = Request.where(borrower_id: @user.id)
    @requests_recieved = Request.where(owner_id: @user.id)


  
  end
end
