class CreateSindicatos < ActiveRecord::Migration
  def change
    create_table :sindicatos do |t|
      t.string :nombre_sindicato
      t.integer :cuota_sindical

      t.timestamps null: false
    end
  end
end
