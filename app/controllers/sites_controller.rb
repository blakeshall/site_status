class SitesController < ApplicationController
  def status
    @site = Site.find(params[:id])
    respond_to do |format|
      format.json {render json: @site}
    end
  end
end
