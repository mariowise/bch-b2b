class Message < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :user
		
	# Validations
			# validates :user, <validations>
			# validates :message, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :user, -> (user_name) { where("user.name like ?", "%#{user_name}%") }
		scope :message, -> (message) { where message: message }
	
	def to_s
		"#{message}"
	end
end
