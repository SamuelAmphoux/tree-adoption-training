class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_one :review, dependent: :destroy
  validates :name, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
