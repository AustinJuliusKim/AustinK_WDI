class RenameWeightColumn < ActiveRecord::Migration
  def change
  	rename_column :people, :wieght, :weight
  end
end
