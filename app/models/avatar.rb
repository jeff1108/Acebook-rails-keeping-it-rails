class Avatar < ApplicationRecord
  belongs_to :user
  mount_uploader :image, AvatarUploader
end
