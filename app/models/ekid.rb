class Ekid < ApplicationRecord
	has_one :pkid
	has_one :skid
	serialize :agr,type: Hash
	belongs_to :sce, optional: true
end
