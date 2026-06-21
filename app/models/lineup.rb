# The 'go-between' class for band and show
class Lineup < ApplicationRecord
  belongs_to :band
  belongs_to :show
end
