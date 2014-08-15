class UploadsController < ApplicationController

  def create
    @upload = Upload.create(upload_params)
  end

end
