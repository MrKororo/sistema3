class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :nombre_personal
      t.string :apellidop_personal
      t.string :apellidom_personal
      t.string :rut_personal
      t.references :isapre, index: true, foreign_key: true
      t.references :banco, index: true, foreign_key: true
      t.references :subcategorium, index: true, foreign_key: true
      t.references :tipocontrato, index: true, foreign_key: true
      t.references :centrocosto, index: true, foreign_key: true
      t.references :afp, index: true, foreign_key: true
      t.boolean :personal_activo
      t.date :fecha_ingreso
      t.references :sindicato, index: true, foreign_key: true
      t.integer :numero_cuenta

      t.timestamps null: false
    end
  end
end
