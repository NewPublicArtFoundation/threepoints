class CreateGraffitis < ActiveRecord::Migration
  def change
    create_table :graffitis do |t|
      t.text :description
      t.datetime :discovered_at, :default => Time.now
      t.datetime :painted_at, :include_blank => true, :default => nil
      t.datetime :buffed_at, :include_blank => true, :default => nil
      t.timestamps
    end
  end
end
