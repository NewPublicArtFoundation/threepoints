class GraffitiPicturesController < ApplicationController
  before_action :set_graffiti_picture, only: [:show, :edit, :update, :destroy]

  # GET /graffiti_pictures
  # GET /graffiti_pictures.json
  def index
    @graffiti_pictures = GraffitiPicture.all
  end

  # GET /graffiti_pictures/1
  # GET /graffiti_pictures/1.json
  def show
  end

  # GET /graffiti_pictures/new
  def new
    @graffiti_picture = GraffitiPicture.new
  end

  # GET /graffiti_pictures/1/edit
  def edit
  end

  # POST /graffiti_pictures
  # POST /graffiti_pictures.json
  def create
    @graffiti_picture = GraffitiPicture.new(graffiti_picture_params)

    respond_to do |format|
      if @graffiti_picture.save
        format.html { redirect_to @graffiti_picture, notice: 'Graffiti picture was successfully created.' }
        format.json { render :show, status: :created, location: @graffiti_picture }
      else
        format.html { render :new }
        format.json { render json: @graffiti_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graffiti_pictures/1
  # PATCH/PUT /graffiti_pictures/1.json
  def update
    respond_to do |format|
      if @graffiti_picture.update(graffiti_picture_params)
        format.html { redirect_to @graffiti_picture, notice: 'Graffiti picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @graffiti_picture }
      else
        format.html { render :edit }
        format.json { render json: @graffiti_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graffiti_pictures/1
  # DELETE /graffiti_pictures/1.json
  def destroy
    @graffiti_picture.destroy
    respond_to do |format|
      format.html { redirect_to graffiti_pictures_url, notice: 'Graffiti picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graffiti_picture
      @graffiti_picture = GraffitiPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graffiti_picture_params
      params.require(:graffiti_picture).permit(:graffiti_id, :image_url, :image_description, :location_id)
    end
end
