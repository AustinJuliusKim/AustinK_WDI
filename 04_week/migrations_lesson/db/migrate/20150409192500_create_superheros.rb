class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
    	t.string :name
    	t.string	:superpower
    	t.boolean :secret_identity
    	t.integer :cool_factor
      t.timestamps null: false
    end
  end
end
