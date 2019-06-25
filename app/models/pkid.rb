class Pkid < ApplicationRecord
	belongs_to :ekid
	serialize :devkid,Hash
	serialize :addfo,Hash
	serialize :health,Hash
	serialize :birth,Hash
	serialize :grow,Hash
	serialize :physpch,Hash
	serialize :agr,Hash
end
