class Currency < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  enum currences_id: { 'USD': 1, 'GBP': 2, 'EUR': 3, 'JOD': 4, 'JPY':5 }
end
