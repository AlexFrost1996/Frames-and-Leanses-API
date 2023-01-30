class Frame < ApplicationRecord
  belongs_to :currency

  validates :name, :status, :stock, :price, presence: true

  enum status: { active: 1, inactive: 0 }
end
