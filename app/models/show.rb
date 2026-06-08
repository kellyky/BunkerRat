class Show < ApplicationRecord
  scope :past, -> { where("date < ?", Date.current) }
  scope :upcoming, -> { where("date > ?", Date.current) }
end
