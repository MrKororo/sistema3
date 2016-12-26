class CambioFloatIndicadorEconomico < ActiveRecord::Migration
    def up
        change_column :indicador_economicos, :valor, :decimal, precision: 7, scale: 2
    end

    def down
        change_column :indicador_economicos, :valor, :float
    end
end
