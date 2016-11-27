class Certificate < ActiveRecord::Base
  belongs_to :personal



    MOTIVOS = ["Trámitar beneficios", "Trámites Judiciales ", "Trámites de asignación familiar", "Trámites internos", "Fines necesarios"]
	def self.search(search)
	  where("rut_personal LIKE ?", "%#{search}%") 
	end
end