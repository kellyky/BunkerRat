class Band < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :shows, through: :lineups
end
