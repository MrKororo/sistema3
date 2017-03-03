class Certificate < ActiveRecord::Base
  belongs_to :personal, :dependent => :destroy



    MOTIVOS = ["Trámitar beneficios", "Trámites Judiciales ", "Trámites de asignación familiar", "Trámites internos", "Fines necesarios"]

end
