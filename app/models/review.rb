class Review < ApplicationRecord
  belongs_to :user
  belongs_to :adoption
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5 }
  validates :content, presence: true
  validates :content, length: { in: 3..114 }
end
