class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true
  validates :list, presence: true
  validates_uniqueness_of :movie, scope: :list_id
  validates :comment, length: { minimum: 5,
  too_short: "Must be at least 6 characters long" }
end
