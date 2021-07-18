class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|
      t.integer :quantity
      t.references :product, foreign_key: true, on_delete: :cascade
      t.references :order, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
