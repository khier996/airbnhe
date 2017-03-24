class Man < ApplicationRecord

has_many :bookings, dependent: :destroy

  has_many :bookings
  belongs_to :user

  after_create :send_confirmation_email


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

  private
  def send_confirmation_email
    ManMailer.creation_confirmation(self).deliver_now
  end
end
