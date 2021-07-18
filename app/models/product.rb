class Product < ApplicationRecord
    has_many :items
    belongs_to :cart, optional: true
    belongs_to :category, optional: true

    validates :name, presence: true
    validates :price, presence: true
end
