class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :score
      t.references :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :movies
  end
end
