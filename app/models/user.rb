class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories
  has_many :records

  validates :name, presence: true, length: { maximum: 250 }
end
