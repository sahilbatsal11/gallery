class Album < ApplicationRecord
  # Validations Start
  validates :name, presence: true, uniqueness: {scope: :user_id, message: "Already created with same name"}
  validates :description, presence: true, length: { minimum: 10 }
  # /Validations End

  # Associations
  belongs_to :user
  # /Associations
end
