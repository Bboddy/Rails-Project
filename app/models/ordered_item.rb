class OrderedItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    belongs_to :user

    validates :quantity, numericality: { greater_than: 0}
end
