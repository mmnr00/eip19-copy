class Foto < ApplicationRecord
	belongs_to :course, optional: true
	belongs_to :tchdetail, optional: true
	belongs_to :kid, optional: true
	belongs_to :taska, optional: true
	belongs_to :expense, optional: true
	belongs_to :ptns_mmb, optional: true
	mount_uploader :picture, PictureUploader
end
