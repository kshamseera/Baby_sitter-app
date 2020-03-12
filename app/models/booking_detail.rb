class BookingDetail < ApplicationRecord
  belongs_to :user
  belongs_to :baby_sitter_registration
  validates :age, numericality: true
  validates :number, numericality: true,length: { is: 10 }
end
