class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @user = User.friendly.find(params[:id])
    @activities = Activity.order("created_at desc")
  end

end
