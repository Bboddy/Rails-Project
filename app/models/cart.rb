class Cart < ApplicationRecord
    belongs_to :user
    belongs_to :order, optional: true
    has_many :items
end
