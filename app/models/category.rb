class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_expenses, dependent: :destroy
  has_many :expenses, through: :category_expenses, dependent: :destroy

  validates :name, presence: true
end
