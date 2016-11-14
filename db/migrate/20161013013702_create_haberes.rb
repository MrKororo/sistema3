class CreateHaberes < ActiveRecord::Migration
  def change
    create_table :haberes do |t|
      t.integer :sueldo_base
      t.float :horas_pactadas
      t.float :valor_hora
      t.references :subcategorium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
