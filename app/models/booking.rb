class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :man_id
end
