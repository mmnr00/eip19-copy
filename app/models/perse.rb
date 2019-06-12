class Perse < ApplicationRecord
	has_many :perproges
	has_many :proges, through: :perproges
end
