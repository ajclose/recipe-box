class Ingredient < ApplicationRecord
  has_many :data
  has_many :recipes, through: :data
end
