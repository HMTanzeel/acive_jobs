class Book < ApplicationRecord
  belongs_to :author
  validates :title, presence: true, length: {maximum: 50}
  validates :author, presence: true, length: {maximum: 40}
  validates :price, presence: true, length: {maximum: 1000}
  validates :prints, presence: true
end
