class RenameColumnParentId < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :parent_id, :child_id
  end
end
