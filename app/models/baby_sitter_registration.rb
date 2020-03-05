class BabySitterRegistration < ApplicationRecord
has_one_attached :upload_image

belongs_to :user
has_many :booking_detail
end
