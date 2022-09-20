class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable, :confirmable, :lockable

  # Associations
  has_many :albums
  has_many :photos
  # /Associations

  def full_name
    [self.first_name, self.last_name].join(" ").strip
  end
end
