class Offer < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

		
	# Validations
			# validates :product, <validations>
			# validates :title, <validations>
			# validates :description, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :product, -> (product) { where product: product }
		scope :title, -> (title) { where title: title }
		scope :description, -> (description) { where description: description }
	
	def to_s
		"#{name}"
	end
end
