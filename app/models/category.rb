class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, foreign_key: :category_id, dependent: :destroy
  has_many :expenses, through: :category_expenditures

  validates :name, presence: true, length: { in: 1..80 }
  validates :icon, presence: true

  def total_expenses
    expenditures.sum('amount')
  end
end
