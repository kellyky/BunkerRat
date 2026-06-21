# The concept of a 'band' - can be a single musician or multiple
# Eventually, I would like to have a 'musician' concept
class Band < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :shows, through: :lineups
end
