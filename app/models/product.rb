class Product < ApplicationRecord

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier
  has_many :images

  has_many :orders


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 40 }
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 6..500 }

  def is_discounted?
    price < 2
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end

end
