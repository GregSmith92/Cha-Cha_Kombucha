class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :kombucha
  validates :kombucha_id, presence: true
  validates :user_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :shipping_address, presence: true
  validates :card_number, presence: true
end
