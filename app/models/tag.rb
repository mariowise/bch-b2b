class Tag < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	has_many :company_tags
	has_many :companies, :through => :company_tags
	has_many :project_tags
	has_many :projects, :through => :project_tags

	# Validations
			# validates :name, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :byname, -> (name) { where("name like ?", "%#{name}%") }
	
	def to_s
		"#{name}"
	end
end
