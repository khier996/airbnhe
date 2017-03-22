class Man < ApplicationRecord
  validates :name, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :birthdate, presence: true
  validates :summary, presence: true
  validates :description, presence: true
  validates :services, presence: true
  validates :price, presence: true

  has_attachments :photos, maximum: 2
end
