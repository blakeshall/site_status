require 'HTTParty'

class SiteChecker
  include Sidekiq::Worker

  def perform(site_id)
    @site = Site.find(site_id)
    puts @site.inspect
    response = HTTParty.get(@site.url)
    if response.code == 200
      @site.status = "Up"
    else
      @site.status = "Down"
    end
    @site.save
    puts "DONE"
  end
end
