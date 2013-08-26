class SitesController < ApplicationController
  def show
    @site = Site.find(params[:id])
    respond_to do |format|
      format.json {render json: @site}
    end
  end

  def index
    @sites = Site.all
    respond_to do |format|
      format.json {render json: @sites}
    end
  end
end
