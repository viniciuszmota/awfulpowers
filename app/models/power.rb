class Power < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :category, presence: true
end
