class CreateTopesLegales < ActiveRecord::Migration
  def change
    create_table :topes_legales do |t|
      t.integer :topeMinimo
      t.integer :topeMaximo

      t.timestamps null: false
    end
  end
end
