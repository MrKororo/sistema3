class CambioFloatADecimal < ActiveRecord::Migration
    def up
        change_column :impuesto_unicos, :imponibleMinimo, :decimal, precision: 9, scale: 2
        change_column :impuesto_unicos, :imponibleMaximo, :decimal, precision: 11, scale: 2
        change_column :impuesto_unicos, :factor, :decimal, precision: 4, scale: 3
        change_column :impuesto_unicos, :rebaja, :decimal, precision: 9, scale: 2
        change_column :impuesto_unicos, :impuestoEfectivoMax, :decimal, precision: 4, scale: 2
    end

    def down
        change_column :impuesto_unicos, :imponibleMinimo, :float
        change_column :impuesto_unicos, :imponibleMaximo, :float
        change_column :impuesto_unicos, :factor, :float
        change_column :impuesto_unicos, :rebaja, :float
        change_column :impuesto_unicos, :impuestoEfectivoMax, :float

    end
end
