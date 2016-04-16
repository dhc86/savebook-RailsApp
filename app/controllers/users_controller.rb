class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_books = @user.books
    @requests_made = Request.where(borrower_id: @user.id)
    @requests_recieved = Request.where(owner_id: @user.id)
    @imageprofile = Imageprofile.where(user_id: @user.id )[0]
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end 
end
