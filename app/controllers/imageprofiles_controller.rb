class ImageprofilesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_imageprofile, only: [:show, :edit, :update, :destroy]

  # GET /imageprofiles
  # GET /imageprofiles.json
  def index
    @imageprofiles = Imageprofile.all
  end

  # GET /imageprofiles/1
  # GET /imageprofiles/1.json
  def show
    redirect_to books_path
  end

  # GET /imageprofiles/new
  def new
    @imageprofile = Imageprofile.new
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end

  # GET /imageprofiles/1/edit
  def edit
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
  end

  # POST /imageprofiles
  # POST /imageprofiles.json
  def create
    @current_user_imageprofile = Imageprofile.where(user_id: current_user.id )[0]
    @imageprofile = Imageprofile.new(imageprofile_params)
    @imageprofile.user_id = current_user.id
    respond_to do |format|
      if @imageprofile.save
        format.html { redirect_to books_path, notice: 'Imageprofile was successfully created.' }
        format.json { render :show, status: :created, location: @imageprofile }
      else
        format.html { render :new }
        format.json { render json: @imageprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageprofiles/1
  # PATCH/PUT /imageprofiles/1.json
  def update
    respond_to do |format|
      if @imageprofile.update(imageprofile_params)
        format.html { redirect_to @imageprofile, notice: 'Imageprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @imageprofile }
      else
        format.html { render :edit }
        format.json { render json: @imageprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageprofiles/1
  # DELETE /imageprofiles/1.json
  def destroy
    @imageprofile.destroy
    respond_to do |format|
      format.html { redirect_to imageprofiles_url, notice: 'Imageprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageprofile
      @imageprofile = Imageprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imageprofile_params
      params.require(:imageprofile).permit(:profile_image, :wall_image)
    end
end
