desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  @client = RedditKit::Client.new ENV['REDDITUSER'], ENV['REDDITPASS']
  @art = InstagramArt.offset(rand(InstagramArt.count)).first
  @client.submit( truncate(@art.caption, length: 140), 'graffiti', {:url => @art.image_url})
  puts "done."
end