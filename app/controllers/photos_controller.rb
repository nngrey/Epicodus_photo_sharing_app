class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  private

  def photo_params
    params.require(:photo).permit(:name)
  end
end
