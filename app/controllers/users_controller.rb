class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @user = User.friendly.find(params[:id])
    @activities = @user.activities.order("created_at desc")
  end

end
