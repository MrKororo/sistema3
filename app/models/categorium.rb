class Categorium < ActiveRecord::Base
		has_many :subcategorium, :dependent => :destroy
		validates :categoria, uniqueness: true, presence: true

	before_save do |categorium|
    	categorium.categoria = categorium.categoria.downcase.titleize
    end
end
