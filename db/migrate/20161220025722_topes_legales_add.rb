class TopesLegalesAdd < ActiveRecord::Migration
  def self.up
  	add_column :topes_legales, :valor_uf, :integer
  	add_column :topes_legales, :cantidad_uf, :float
  end
  def self.down
  	add_column :topes_legales, :valor_uf
  	add_column :topes_legales, :cantidad_uf
  end
end
