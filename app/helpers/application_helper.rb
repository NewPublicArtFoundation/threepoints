module ApplicationHelper

  # Message helper
   def content_excerpt(c)
     return unless c
     truncate(c, :length => 140)
   end

end
