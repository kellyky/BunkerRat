class Show < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :bands, through: :lineups

  scope :past, -> { where("date < ?", Date.current) }
  scope :upcoming, -> { where("date > ?", Date.current) }
end
