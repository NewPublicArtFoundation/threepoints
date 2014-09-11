# Three Points

This is going to be the internets graffiti repository

# Trello

https://trello.com/b/ds3dOl3r/fidet-current

https://trello.com/b/bFGkXIkK/fidget-proposals

# Rake tasks

rake sitemap:install will create a config/sitemap.rb file which is your sitemap configuration and contains everything needed to build your sitemap. See Sitemap Configuration below for more information about how to define your sitemap.
rake sitemap:refresh will create or rebuild your sitemap files as needed. Sitemaps are generated into the public/ folder and by default are named sitemap_index.xml.gz, sitemap1.xml.gz, sitemap2.xml.gz, etc. As you can see they are automatically gzip compressed for you.
rake sitemap:refresh will output information about each sitemap that is written including its location, how many links it contains and the size of the file.
