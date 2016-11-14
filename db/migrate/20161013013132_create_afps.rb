class CreateAfps < ActiveRecord::Migration
  def change
    create_table :afps do |t|
      t.string :afp

      t.timestamps null: false
    end
  end
end
