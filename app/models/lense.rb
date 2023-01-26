class Lense < ApplicationRecord
  belongs_to :currence

  validates :colour, :prescription_type, :lens_type, :stock, :price, presence: true
end
