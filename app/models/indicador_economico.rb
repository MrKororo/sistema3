class IndicadorEconomico < ActiveRecord::Base

  validates_presence_of :indicador
  validates_numericality_of :valor  
end
