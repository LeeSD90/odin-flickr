class StaticPagesController < ApplicationController
  require 'flickraw'

  def home
    FlickRaw.api_key = ENV["FLICKR_KEY"]
    FlickRaw.shared_secret = ENV["FLICKR_SECRET"]
    @urls = []

    if params[:id]
      @photos = flickr.photos.search(user_id: params[:id])
    end
  end

end
