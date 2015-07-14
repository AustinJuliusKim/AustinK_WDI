class AddBirthdayWeightHeightToPersonTable < ActiveRecord::Migration
  def change
  	add_column :people, :height, :integer
  	add_column :people, :wieght, :integer
  	add_column :people, :birthday, :strings
  end
end
