class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings, dependent: :destroy
  geocoded_by :full_street_address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  CURRENCIES = ["€ - EUR", "£ - GBP", "$ - USD"]
  include PgSearch::Model
pg_search_scope :search_by_city,
  against: [ :title, :city, :description],
  using: {
    tsearch: { prefix: true }
  }

  def full_street_address
    address + " " + city
  end
end
