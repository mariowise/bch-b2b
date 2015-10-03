class CompanyTag < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :tag
	  		belongs_to :company
		
	# Validations
			# validates :tag, <validations>
			# validates :company, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :tag, -> (tag_name) { where("tag.name like ?", "%#{tag_name}%") }
		scope :company, -> (company_name) { where("company.name like ?", "%#{company_name}%") }
	
	def to_s
		"#{name}"
	end
end
