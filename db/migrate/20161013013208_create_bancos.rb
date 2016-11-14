class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :banco
      t.string :tipo_cuenta

      t.timestamps null: false
    end
  end
end
