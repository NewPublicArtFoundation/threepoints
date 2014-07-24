class ActivitiesController < ApplicationController
  def index
    @activities = Activity.order("created_at desc")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activities
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:action, :trackable)
    end
end
