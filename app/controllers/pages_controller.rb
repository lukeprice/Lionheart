class PagesController < ApplicationController

  def home
    
  end

  def about

  end

  def tour
    @slides = Slide.all
    @images = Dir.glob("app/assets/images/tour/*.png")
  end

end
