class ProjectTag < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :project
	  		belongs_to :tag
		
	# Validations
			# validates :project, <validations>
			# validates :tag, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :project, -> (project_name) { where("project.name like ?", "%#{project_name}%") }
		scope :tag, -> (tag_name) { where("tag.name like ?", "%#{tag_name}%") }
	
	def to_s
		"#{name}"
	end
end
