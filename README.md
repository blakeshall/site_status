# Site_Status

Simple site status checker built with Rails 4, Sidekiq, and AngularJS.
This is a toy project for me to learn Angular and Sidekiq.

It spawns workers for each site every minute that check the availability of the site.
The front end also polls the API every minute and updates accordingly.


## Dependencies

- Redis (for Sidekiq)
- Whenever gem (for scheduling tasks)

## Eventually

- Better checking (handling all HTTP codes) w/ status
- Mailers for when a site is down
