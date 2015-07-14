class SetDefaultActiveValue < ActiveRecord::Migration
  def change
  	change_column :doctors, :active, :boolean, :default => false
  end
end
