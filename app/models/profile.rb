class Profile < ApplicationRecord
  belongs_to :users, class_name: 'User', :foreign_key => "user_id"

  mount_uploader :avatar, ProfileUploader
end
