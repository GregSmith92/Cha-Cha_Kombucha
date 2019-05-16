class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :kombucha
  validates :kombucha_id, presence: true
  validates :user_id, presence: true
end
