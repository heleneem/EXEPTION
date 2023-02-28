class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :category, presence: true
end
