class EventsController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC")  
    @users = User.all
    @requests = Request.all
    @imageprofile = Imageprofile.all
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end
end
