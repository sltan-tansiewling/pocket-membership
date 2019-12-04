class MembershipsUser < ApplicationRecord
  belongs_to :user
  belongs_to :membership
  mount_uploader :image, ImageUploader
  mount_uploader :image_back, ImageBackUploader
end
