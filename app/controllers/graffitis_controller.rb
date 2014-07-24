class GraffitisController < ApplicationController
  before_action :set_graffiti, only: [:show, :edit, :update, :destroy, :vote]

  # GET /graffitis
  # GET /graffitis.json
  def index
    @graffitis = Graffiti.all
  end

  # GET /graffitis/1
  # GET /graffitis/1.json
  def show
    @graffiti = Graffiti.friendly.find(params[:id])

    @location = @graffiti.location

    @commentable = @graffiti
    @comments = @commentable.comments
    @comment = Comment.new
  end

  # GET /graffitis/new
  def new
    @graffiti = Graffiti.new
  end

  # GET /graffitis/1/edit
  def edit
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

  # PATCH/PUT /graffitis/1
  # PATCH/PUT /graffitis/1.json
  def update
    respond_to do |format|
      if @graffiti.update(graffiti_params)
        track_activity @graffiti
        format.html { redirect_to @graffiti, notice: 'Graffiti was successfully updated.' }
        format.json { render :show, status: :ok, location: @graffiti }
      else
        format.html { render :edit }
        format.json { render json: @graffiti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graffitis/1
  # DELETE /graffitis/1.json
  def destroy
    @graffiti.destroy
    track_activity @graffiti
    respond_to do |format|
      format.html { redirect_to graffitis_url, notice: 'Graffiti was successfully destroyed.' }
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

    @graffiti.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graffiti
      @graffiti = Graffiti.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graffiti_params
      params.require(:graffiti).permit(:name, :slug, :description, :discovered_at, :painted_at, :buffed_at, :location_id, :artist_id, :images, comments_attributes: [:graffiti_id, :content] )
    end
end
