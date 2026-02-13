class Ekid < ApplicationRecord
	has_one :pkid
	has_one :skid
	has_many :fotos
	accepts_nested_attributes_for :fotos
	serialize :agr,type: Hash
	belongs_to :sce, optional: true
end
