class CreateIndicadorEconomicos < ActiveRecord::Migration
  def change
    create_table :indicador_economicos do |t|
      t.string :indicador
      t.integer :valor

      t.timestamps null: false
    end
  end
end
