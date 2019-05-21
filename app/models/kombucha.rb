class Kombucha < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, presence: true
  validates :flavour, presence: true
  # validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  include PgSearch
  pg_search_scope :search_by_name_and_flavour,
                  against: [:name, :flavour],
                  using: {
                    tsearch: { prefix: true }
                  }
end
