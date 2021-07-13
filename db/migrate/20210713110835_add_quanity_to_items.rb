class AddQuanityToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :quanity, :integer
  end
end
