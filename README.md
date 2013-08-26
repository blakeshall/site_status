# Site_Status

Simple site status checker built with Rails 4, Sidekiq, and AngularJS.
This is a toy project for me to learn Angular and Sidekiq.

![desk-screen](http://f.cl.ly/items/2p0h0I3y0X36000R472V/Screen%20Shot%202013-08-26%20at%207.46.40%20PM.png)
![mobile-screen](http://f.cl.ly/items/1W3X3K3d3B0V44232c3y/iphone-screen.png)

It spawns workers for each site every minute that check the availability of the site.
The front end also polls the API every minute and updates accordingly.


## Dependencies

- Redis (for Sidekiq)
- Whenever gem (for scheduling tasks)

## Eventually

- Better checking (handling all HTTP codes) w/ status
- Mailers for when a site is down
