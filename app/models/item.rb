class Item < ApplicationRecord
    belongs_to :cart , optional: true, dependent: :destroy
    belongs_to :product
    belongs_to :user
end
