class PagesController < ApplicationController
  def index
    @users = User.all
    @locations = Location.all
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
    @graffitis = Graffiti.limit(15).all
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
      params.require(:graffiti).permit(:name, :slug, :description, :attribution, :discovered_at, :painted_at, :buffed_at, :location_id, :artist_id, :images, comments_attributes: [:graffiti_id, :content] )
    end

end
