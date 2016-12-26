class AddCargasPersonal < ActiveRecord::Migration
  def self.up
  	add_column :personals, :cargas_familiar, :integer
  end
  
end
