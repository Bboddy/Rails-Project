class Item < ApplicationRecord
    belongs_to :cart , optional: true, dependent: :destroy
    belongs_to :product
    belongs_to :order , optional: true
end
