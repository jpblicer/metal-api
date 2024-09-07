class Band < ApplicationRecord
  t.string :albums, array: true
end
