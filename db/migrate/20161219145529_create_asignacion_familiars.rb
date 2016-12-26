class CreateAsignacionFamiliars < ActiveRecord::Migration
  def change
    create_table :asignacion_familiars do |t|
      t.string :tramo
      t.integer :monto
      t.integer :requisitoMinimo
      t.integer :requisitoMaximo

      t.timestamps null: false
    end
  end
end
