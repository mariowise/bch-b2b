class Notice < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

		
	# Validations
			# validates :actions, <validations>
			# validates :price, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :actions, -> (actions) { where actions: actions }
		scope :price, -> (price) { where price: price }
	
	def to_s
		"#{name}"
	end
end
