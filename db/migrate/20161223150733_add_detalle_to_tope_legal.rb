class AddDetalleToTopeLegal < ActiveRecord::Migration
  def change
    add_column :topes_legales, :detalle, :string
  end
end
