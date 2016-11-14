class CreateIsapres < ActiveRecord::Migration
  def change
    create_table :isapres do |t|
      t.string :isapre

      t.timestamps null: false
    end
  end
end
