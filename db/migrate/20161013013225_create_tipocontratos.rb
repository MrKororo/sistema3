class CreateTipocontratos < ActiveRecord::Migration
  def change
    create_table :tipocontratos do |t|
      t.string :tipo_contrato

      t.timestamps null: false
    end
  end
end
