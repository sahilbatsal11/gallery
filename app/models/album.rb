class Album < ApplicationRecord
  # Validations Start
  validates :name, presence: true, uniqueness: {scope: :user_id, message: "Already created with same name"}
  validates :description, presence: true, length: { minimum: 10 }
  # /Validations End

  mount_uploader :image, ImageUploader

  # Associations
  belongs_to :user
  has_many :photos
  # /Associations

  # Scopes
  default_scope ->{ order(created_at: :desc) }
  # /Scopes
end