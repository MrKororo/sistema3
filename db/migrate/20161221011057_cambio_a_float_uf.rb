class CambioAFloatUf < ActiveRecord::Migration
    def up
        change_column :indicador_economicos, :valor, :float
    end

    def down
        change_column :indicador_economicos, :valor, :integer
    end
end
