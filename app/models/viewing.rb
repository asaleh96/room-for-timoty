class Viewing < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  include PgSearch::Model

  pg_search_scope :search_by_,
  against: [ :title, :city, :description],
  using: {
    tsearch: { prefix: true }
  }
end
