class Order < ApplicationRecord
    belongs_to :user
    has_many :ordered_items

    validates :total_price, presence: true
    validates :total_price, numericality: { greater_than: 0 }
end
