class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  INTERESTS = ["Cooking", "Sports", "Party", "Training", "Outdoors"]
  # validates :first_name, presence: true, uniqueness: { scope: :last_name }
  # validates :last_name, presence: true
  # validates :interests, inclusion: { in: INTERESTS }

  has_many :viewings
  has_many :flats, dependent: :destroy
end
