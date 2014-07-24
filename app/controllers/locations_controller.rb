class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy, :vote]

  # GET /locations
  # GET /locations.json
  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 5000, :order => :distance)
    else
      @locations = Location.all.reverse
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    if @location.instagram != nil
      @instagram = Instagram.location_recent_media(@location.instagram, {:count => 10})
    end

    if @location.image != nil
      @heroImage = @location.image
    else
      @heroImage = "http://maps.google.com/maps/api/staticmap?size=1200x300&sensor=false&zoom=16&markers=#{@location.latitude}%2C#{@location.longitude}"
    end
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @location.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :description, :address, :twitter_url, :instagram_url, :facebook_url, :website, :longitude, :latitude, :slug, :image, :instagram, :discovered_at, :demolished_at, comments_attributes: [:location_id, :content])
    end
end
