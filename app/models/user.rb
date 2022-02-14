class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :categories
  has_many :records

  validates :name, presence: true, length: { maximum: 250 }
end
