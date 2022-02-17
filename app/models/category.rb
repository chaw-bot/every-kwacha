class Category < ApplicationRecord
  has_one_attached :icon
  belongs_to :user
  has_many :category_records
  has_many :records, through: :category_records

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true, length: { maximum: 250 }

  def recent_records
    records.order(created_at: :DESC)
  end

  def recent_categories
    categories.order(created_at: :DESC)
  end
end
