class PagesController < ApplicationController

  def home
    
  end

  def about

  end

  def tour
    @images = Dir.glob("app/assets/images/tour/*.png")
  end

end
