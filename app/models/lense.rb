class Lense < ApplicationRecord
  belongs_to :currency

  validates :colour, :prescription_type, :lens_type, :stock, :price, presence: true

  enum prescription_type: { fashion: 1, single_vision: 2, varifocal: 3 }
  enum lens_type: { classic: 1, blue_light: 2, transition: 3 }
end
