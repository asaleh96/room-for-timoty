class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings, dependent: :destroy

  include PgSearch::Model
pg_search_scope :search_by_city,
  against: [ :title, :city, :description],
  using: {
    tsearch: { prefix: true }
  }
end
