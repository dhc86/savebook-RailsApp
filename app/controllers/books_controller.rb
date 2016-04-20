class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all.order("created_at DESC")
    if params[:search]
      @books = @books.where(['title LIKE ?', "%#{params[:search]}%"])
    end
    @users = User.all
    @requests = Request.all
    @imageprofile = Imageprofile.all
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @users = User.all
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end

  # GET /books/new
  def new
    @book = current_user.books.build
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end

  # GET /books/1/edit
  def edit
    if @book.user_id == current_user.id
      @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
    else 
      redirect_to books_path
    end 
  end

  # POST /books
  # POST /books.json
  def create
    @book = current_user.books.build(book_params)
    respond_to do |format|
      if @book.save
        @event = Event.new
        @event.user_id = current_user.id
        @event.book = true
        @event.book_id = @book.id
        @event.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :isbn, :description, :picture_url)
    end
end
