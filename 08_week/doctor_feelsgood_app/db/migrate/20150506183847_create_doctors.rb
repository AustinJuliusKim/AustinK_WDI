class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.boolean :active

      t.timestamps null: false
    end
  end
end
