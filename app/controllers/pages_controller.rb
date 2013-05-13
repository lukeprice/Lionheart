class PagesController < ApplicationController
  respond_to :html, :json
  def home
  @home = Home.first
    @banners = Banner.all
    @images = Dir.glob("app/assets/images/tour/*.png")
    
  end

  def about

  end

  def tour
    @slides = Slide.all
    @images = Dir.glob("app/assets/images/tour/*.png")
  end

end
