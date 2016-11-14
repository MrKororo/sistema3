class Habere < ActiveRecord::Base
  belongs_to :subcategorium

  validates :subcategorium_id, uniqueness: true
  validates_presence_of :horas_pactadas, :sueldo_base, :subcategorium_id, :valor_hora
  validates_numericality_of :horas_pactadas, :greater_than_or_equal_to => 50, :less_than_or_equal_to => 180, :message => "Cantidad de horas incorrecta"
  validates_numericality_of :sueldo_base
  validates_numericality_of :valor_hora
end
