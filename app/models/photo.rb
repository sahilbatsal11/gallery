class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :album

  mount_uploader :image, ImageUploader
  mount_uploaders :images, ImageUploader
end
