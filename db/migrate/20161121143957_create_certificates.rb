class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :personal, index: true, foreign_key: true
      t.string :motivo

      t.timestamps null: false
    end
  end
end
