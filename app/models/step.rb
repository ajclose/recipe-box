class Step < ApplicationRecord
  belongs_to :recipe
  validates :order, presence: true
  validates :directions, presence: true
end
