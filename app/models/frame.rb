class Frame < ApplicationRecord
  belongs_to :currence

  validates :name, :status, :stock, :price, presence: true
end
