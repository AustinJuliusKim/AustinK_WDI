class AddPatternToBowties < ActiveRecord::Migration
  def change
    add_column :bowties, :pattern, :string
  end
end
