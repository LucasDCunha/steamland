class Game < ApplicationRecord
  has_many :game_categories
  has_many :categories, through: :game_category
  has_many :owns
  has_many :bookings
  has_many :users, through: :owns
end
