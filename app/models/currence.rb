class Currence < ApplicationRecord
  has_many :frames
  has_many :lenses

  validates :title, presence: true, uniqueness: true
end
