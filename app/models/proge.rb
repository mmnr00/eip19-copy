class Proge < ApplicationRecord
	has_many :perproges
	has_many :perses, through: :perproges
end
