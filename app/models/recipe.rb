class Recipe < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :ingredients
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true, numericality: true
end
