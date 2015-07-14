class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
    	t.string :name
    	t.boolean :is_cool
    	t.integer :num_of_lives
      t.timestamps null: false
    end
  end
end
