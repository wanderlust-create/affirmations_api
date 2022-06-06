class Affirmation < ApplicationRecord
  validates :description, :category, presence: true
end
