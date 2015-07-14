class AddAlbumsTable < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :rating
      t.integer :num_tracks
 
      t.timestamps null: false
    end
  end
end
