class AddAsignacionFamiliar < ActiveRecord::Migration
  def self.up
  	add_column :liquidacions, :asignacion_familiar, :integer
  end
end
