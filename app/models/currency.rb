class Currency < ApplicationRecord
  validates :currency_name, presence: true
  validates :currency_code, presence: true, uniqueness: true
end
