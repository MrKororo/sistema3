class CreateDescuentoAdicionals < ActiveRecord::Migration
  def change
    create_table :descuento_adicionals do |t|
      t.integer :descuento_adicional
      t.string :detalle

      t.timestamps null: false
    end
  end
end
