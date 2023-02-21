class AddColumnParentId < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :parent_id, :int
  end
end
