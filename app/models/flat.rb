class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
