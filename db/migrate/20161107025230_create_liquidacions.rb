class CreateLiquidacions < ActiveRecord::Migration
  def change
    create_table :liquidacions do |t|
      t.references :asignacion, index: true, foreign_key: true
      t.references :habere, index: true, foreign_key: true
      t.references :bonificacion, index: true, foreign_key: true
      t.references :descuento_adicional, index: true, foreign_key: true
      t.references :personal, index: true, foreign_key: true
      t.date :fecha_pago
      t.integer :descuento_afp
      t.integer :descuento_isapre
      t.integer :sindicato
      t.integer :impuesto
      t.integer :cotizacion_voluntaria
      t.float :horas_trabajadas
      t.integer :remuneracion
      t.float :horas_extra
      t.float :vacaciones
      t.integer :total_haberes
      t.integer :desc_legales
      t.integer :desc_varios
      t.integer :liquido_pagar

      t.timestamps null: false
    end
  end
end
