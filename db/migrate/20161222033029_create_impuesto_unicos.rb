class CreateImpuestoUnicos < ActiveRecord::Migration
  def change
    create_table :impuesto_unicos do |t|
      t.float :imponibleMinimo
      t.float :imponibleMaximo
      t.float :factor
      t.float :rebaja
      t.float :impuestoEfectivoMax

      t.timestamps null: false
    end
  end
end
