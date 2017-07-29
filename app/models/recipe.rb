class Recipe < ApplicationRecord
  has_many :steps
  has_many :data
  has_many :ingredients, through: :data
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true
end
