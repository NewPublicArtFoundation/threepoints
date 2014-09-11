module ApplicationHelper

  # Message helper
   def content_excerpt(c)
     return unless c
     truncate(c, :length => 140)
   end

    def default_meta_tags
      {
        :title       => 'Public Artfound',
        :description => 'The only platform to showcase street art and graffiti.',
        :keywords    => 'graffiti, street art, urban, photography, street photography, hiphop, art, streetart, gallery, style',
        :separator   => "&mdash;".html_safe,
      }
    end

end
