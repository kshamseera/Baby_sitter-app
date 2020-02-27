class BabySitterRegistration < ApplicationRecord
has_one_attached :upload_cv
has_one_attached :upload_image

belongs_to :user
end
