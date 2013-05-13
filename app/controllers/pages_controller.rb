class PagesController < ApplicationController
  def home
    @banners = Banner.all
    @images = Dir.glob("app/assets/images/tour/*.png")
    @news = News.find(:all, :order => "id desc", :limit => 5)
    
  end

  def about

  end

  def tour
    @slides = Slide.all
    @images = Dir.glob("app/assets/images/tour/*.png")
  end

end
