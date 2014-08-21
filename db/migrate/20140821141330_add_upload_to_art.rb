class AddUploadToArt < ActiveRecord::Migration
  def change
    change_table :uploads do |t|
      t.belongs_to :art
    end
  end
end
