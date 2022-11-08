class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
pg_search_scope :search_by_city,
  against: [ :title, :city, :description],
  using: {
    tsearch: { prefix: true }
  }
end
