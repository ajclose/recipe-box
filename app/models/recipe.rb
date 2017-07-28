class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true
end
