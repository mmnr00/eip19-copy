class Ekid < ApplicationRecord
	has_one :pkid
	has_one :skid
	serialize :agr,Hash
	belongs_to :sce, optional: true
end
