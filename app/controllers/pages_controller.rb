class PagesController < ApplicationController
  def index
    @sites = Site.all
  end
end
