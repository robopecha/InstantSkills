class Skill < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :level, presence: true, numericality: { in: 1..5 }
end
