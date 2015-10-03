class Company < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	has_attached_file :avatar, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/img/avatar-missing.jpg"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/  

	# Validations
	# validates :name, <validations>
	# validates :score, <validations>
	# validates :rut, <validations>
	# validates :category, <validations>

	# Scopes (used for search form)
	scope :byname, -> (name) { where("name like ?", "%#{name}%") }
	scope :score, -> (score) { where score: score }
	scope :rut, -> (rut) { where rut: rut }
	scope :category, -> (category) { where category: category }
	
	def to_s
		"#{name}"
	end
end
