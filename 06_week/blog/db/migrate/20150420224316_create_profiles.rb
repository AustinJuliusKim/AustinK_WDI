class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.text :bio

      t.timestamps null: false
    end
  end
end
