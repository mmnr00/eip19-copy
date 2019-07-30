class Ekid < ApplicationRecord
	has_one :pkid
	belongs_to :sce, optional: true
end
