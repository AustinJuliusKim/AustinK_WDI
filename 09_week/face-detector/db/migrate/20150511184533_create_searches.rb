class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :search_term
      t.text :search_result

      t.timestamps null: false
    end
  end
end
