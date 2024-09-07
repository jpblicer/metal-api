class Band < ApplicationRecord
  t.string :albums, array: true
  validates :name, presence: true, uniqueness: true
end
