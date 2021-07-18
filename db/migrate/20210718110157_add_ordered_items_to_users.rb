class AddOrderedItemsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :ordered_items, :user, foreign_key: true
  end
end