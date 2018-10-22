# Boston Sleep

[![Build Status](https://travis-ci.org/sleepepi/bostonsleep.org.svg?branch=master)](https://travis-ci.org/sleepepi/bostonsleep.org)
[![Code Climate](https://codeclimate.com/github/sleepepi/bostonsleep.org/badges/gpa.svg)](https://codeclimate.com/github/sleepepi/bostonsleep.org)

The application that runs https://bostonsleep.org. Using Rails 5.2+ and Ruby 2.5+.


## Setting up Cron Jobs

Edit Cron Jobs `sudo crontab -e` to run the tasks

**Refreshing Sitemap**

```
SHELL=/bin/bash
0 1 * * * source /etc/profile.d/rvm.sh && cd /var/www/bostonsleep.org && rvm 2.5.3 && rails sitemap:refresh RAILS_ENV=production
```

## License

Boston Sleep is released under the [MIT License](http://www.opensource.org/licenses/MIT).
