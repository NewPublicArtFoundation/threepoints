class AddSocialMediaToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :twitter_url, :string
    add_column :locations, :facebook_url, :string
    add_column :locations, :instagram_url, :string
    add_column :locations, :website, :string
  end
end
