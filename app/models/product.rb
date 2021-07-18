class Product < ApplicationRecord
    belongs_to :cart, optional: true
    belongs_to :category, optional: true
    has_many :items, dependent: :destroy

    validates :name, presence: true
    validates :price, presence: true
    validates :price, numericality: { greater_than: 0 }
end
