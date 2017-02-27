class Attach < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
	validates :name, presence: true
	belongs_to :user ,optional: true 
end