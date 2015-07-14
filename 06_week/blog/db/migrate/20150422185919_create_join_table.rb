class CreateJoinTable < ActiveRecord::Migration
  def change
  	create_table :users_roles, id: false do |t|
  		t.belongs_to :users, index: true
  		t.belongs_to :roles, index: true
  	end
  end
end
