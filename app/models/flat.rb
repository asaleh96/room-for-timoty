class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings, dependent: :destroy
end
