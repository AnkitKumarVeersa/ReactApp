class DeleteInventoryreactions < ActiveRecord::Migration[6.1]
  def change
    drop_table :inventoryreactions
  end
end
