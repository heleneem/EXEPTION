class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user
  validates :total_price, presence: true, numericality: { only_integer: true }
  validates :validates, presence: true
  # ajouter dans le "validates" 3 valeurs possibles , ex : ["pending","accepted","declined"]
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :check_out, comparison: { greater_than: :check_in }
end
