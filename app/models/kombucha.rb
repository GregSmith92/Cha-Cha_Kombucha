class Kombucha < ApplicationRecord
  belongs_to :user, dependent: :destroy
  # validates :name, presence: true
  # validates :flavour, presence: true
  # validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
