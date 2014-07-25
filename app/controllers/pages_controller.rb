class PagesController < ApplicationController
  def index
    @users = User.all
  end

  def home
  end

  def about
  end

end
