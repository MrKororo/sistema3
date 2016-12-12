class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :email
      t.string :rut_usuario
      t.string :tipo_usuario
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
