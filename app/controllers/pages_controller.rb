class PagesController < ApplicationController
  def index
    @graffitis = InstagramArt.paginate(:page => params[:page], :per_page => 100).order('created_at DESC')
  end

  def jsonTest
    @graffitis = Graffiti.limit(20).all
  end

  # POST /graffitis
  # POST /graffitis.json
  def create
    @graffiti = Graffiti.new(graffiti_params)

    respond_to do |format|
      if @graffiti.save

        track_activity @graffiti

        format.html { redirect_to @graffiti, notice: 'Graffiti was successfully created.' }
        format.json { render :show, status: :created, location: @graffiti }
      else
        format.html { render :new }
        format.json { render json: @graffiti.errors, status: :unprocessable_entity }
      end
    end
  end

  def mapExample
    if(Artist.exists?(:slug => 'jr'))
      @artist = Artist.friendly.find('jr')
      @pieces = @artist.graffitis
      @graffitis = @pieces.all
    else
      @graffitis = Graffiti.limit(20).all
    end
  end

  def timelineExample
  end

  def home
  end

  def about
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graffiti
      @graffiti = Graffiti.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graffiti_params
      params.require(:graffiti).permit( :description, :location_id, :artist_id, :discovered_at, :painted_at, :buffed_at, :locations_id, :artists_id, :created_at, :updated_at, :slug, :images_file_name, :images_content_type, :images_file_size, :images_updated_at, :name, :attribution, :image_url)
    end

end
