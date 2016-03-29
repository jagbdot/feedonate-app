class Product < ActiveRecord::Base
  belongs_to :donation

  validates :name, presence: true 
  validates :name, length: {maximum: 15} 
  validates :name, format: {with: /\A[a-zA-ZÑñ0-9\ ]+\Z/}
  validates :amount, presence: true
  validates :amount, numericality: true
end
