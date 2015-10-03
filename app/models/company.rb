class Company < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

		
	# Validations
			# validates :name, <validations>
			# validates :score, <validations>
			# validates :rut, <validations>
			# validates :category, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :byname, -> (name) { where("name like ?", "%#{name}%") }
		scope :score, -> (score) { where score: score }
		scope :rut, -> (rut) { where rut: rut }
		scope :category, -> (category) { where category: category }
	
	def to_s
		"#{name}"
	end
end
