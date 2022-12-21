class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :fruit_type, presence: true
  validates :fruit_type, inclusion: { in: %w[Apple Apricot Cherry Chestnut Coconut tree Fig Grapefruit Hazel Mandarin
                                             Mango Mirabellier Mulberry Olivier Orange Pear Plum] }
  validates :description, presence: true
  validates :description, length: { in: 20..280 }
  validates :price_per_year, presence: true
  validates :price_per_year, numericality: { only_integer: true, greater_than: 0 }
  validates :quantity_per_year, presence: true
  validates :quantity_per_year, numericality: { only_integer: true, greater_than: 0 }
end
