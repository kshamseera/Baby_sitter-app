class BookingDetail < ApplicationRecord
  belongs_to :user
  belongs_to :baby_sitter_registration
end
