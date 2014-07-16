class AddSocialAccountsToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :flickr_url, :string
    add_column :artists, :instagram_url, :string
    add_column :artists, :tumblr_url, :string
    add_column :artists, :twitter_url, :string
  end
end
