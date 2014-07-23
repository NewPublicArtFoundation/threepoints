require "instagram"

Instagram.configure do |config|

config.client_id = "eb4373d1dc174aca9f1645aaac9a1461"

config.access_token = ENV['TP_INSTAGRAM_TOKEN']

end
