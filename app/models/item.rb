class Item < ApplicationRecord
    belongs_to :cart , optional: true
    belongs_to :product

    validates :quantity, numericality: { greater_than: 0 }
end