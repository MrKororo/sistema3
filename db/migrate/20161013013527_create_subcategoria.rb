class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :subcategoria
      t.references :categorium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
