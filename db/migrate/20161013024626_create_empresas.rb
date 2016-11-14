class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre_empresa
      t.string :rut_empresa
      t.string :giro
      t.string :domicilio
      t.string :email
      t.string :website
      t.string :telefono

      t.timestamps null: false
    end
  end
end
