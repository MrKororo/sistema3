class CreateAsignacions < ActiveRecord::Migration
  def change
    create_table :asignacions do |t|
      t.integer :asignacion
      t.string :detalle_asignacion
      t.references :subcategorium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
