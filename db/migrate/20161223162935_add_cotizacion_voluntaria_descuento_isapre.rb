class AddCotizacionVoluntariaDescuentoIsapre < ActiveRecord::Migration
  def change
  	add_column :personals, :cotizacion_voluntaria, :integer
  	add_column :personals, :descuento_isapre, :integer  	
  end
end
