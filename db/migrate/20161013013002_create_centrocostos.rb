class CreateCentrocostos < ActiveRecord::Migration
  def change
    create_table :centrocostos do |t|
      t.string :nombre
      t.string :codigo
      t.string :detalle_centro

      t.timestamps null: false
    end
  end
end
