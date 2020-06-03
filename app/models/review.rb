class Review < ApplicationRecord
  NUMBER = 0..5
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating , numericality: { only_integer: true}
  validates :rating , inclusion: {in: NUMBER}
end
