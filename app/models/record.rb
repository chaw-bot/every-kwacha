class Record < ApplicationRecord
  belongs_to :user
  has_many :category_records
  has_many :categories, through: :category_records

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than: 0 }

  def total_price
    records.sum('amount')
  end
end
