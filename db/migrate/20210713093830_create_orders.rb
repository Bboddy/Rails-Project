class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :address
      t.decimal :total_price
      t.string :status

      t.timestamps
    end
  end
end
