class HomeController < ApplicationController
  def index
    @features = Feature.order("created_at DESC").limit(5).all
  end

  def media
  end
  
  def contact
  end


  def devfest_2011
  end

  def dinners
  end

  def hacksquad
  end

  def jobs
  end
  
end
