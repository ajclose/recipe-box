class Recipe < ApplicationRecord
  has_many :steps
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true
end
