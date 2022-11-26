class Expense < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_expenses, dependent: :destroy
  has_many :categories, through: :category_expenses, dependent: :destroy

  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0, less_than: 1_000_000 }
end
