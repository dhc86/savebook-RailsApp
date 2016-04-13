module LendsHelper

  def update_request
    Request.where(book_id: @book.id)[0].update( attended_to: true, accepted: true )
  end 

end
