class Cart < ApplicationRecord
    belongs_to :user
    belongs_to :order, optional: true

    validates :total_price, numericality: { greater_than: 0 }
end
