class Review < ApplicationRecord
  RAITINGS = [1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, :in => 0..5

end
