# 'Show' is the first-class object in this app
# The shows index is mapped to root
# Eventually I would like to have a 'venue' model to link to
class Show < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :bands, through: :lineups

  scope :past, -> { where("date < ?", Date.current) }
  scope :upcoming, -> { where("date > ?", Date.current) }
end
