class Site < ActiveRecord::Base

  def self.spawn_workers
    Site.all.each do |site|
      SiteChecker.perform_async(site.id)
    end
  end
end
