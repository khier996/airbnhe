class Man < ApplicationRecord
has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :birthdate, presence: true
  validates :summary, presence: true
  validates :description, presence: true
  validates :services, presence: true
  validates :price, presence: true

  has_attachments :photos, maximum: 5
end
