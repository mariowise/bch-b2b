class Project < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	belongs_to :user
	has_many :project_tags, :dependent => :destroy
	has_many :tags, :through => :project_tags

	# Validations
	# validates :name, <validations>
	# validates :type, <validations>
	# validates :goal, <validations>
	# validates :current_money, <validations>

	# Scopes (used for search form)
	scope :byname, -> (name) { where("name like ?", "%#{name}%") }
	scope :type, -> (type) { where type: type }
	scope :goal, -> (goal) { where goal: goal }
	scope :current_money, -> (current_money) { where current_money: current_money }
	
	def to_s
		"#{name}"
	end
end
