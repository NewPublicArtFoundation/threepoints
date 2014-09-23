desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  @client = RedditKit::Client.new ENV['REDDITUSER'], ENV['REDDITPASS']
  @art = InstagramArt.offset(rand(InstagramArt.count)).first
  @client.submit( 'Gorgeous', 'graffiti', {:url => 'http://www.publicartfound.com/instagram_arts/242868'})
  puts "done."
end