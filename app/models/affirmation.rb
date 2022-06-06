class Affirmation < ApplicationRecord
  validates :description, presence: true
end
