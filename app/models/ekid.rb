class Ekid < ApplicationRecord
	has_one :pkid
	has_one :skid
	belongs_to :sce, optional: true
end
