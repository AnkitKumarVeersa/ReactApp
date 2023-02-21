class UpdateChildIdType < ActiveRecord::Migration[6.1]
  def change
    # change_column :comments, :child_id, :integer, array: true, default: [], using: 'child_id::integer[]'
  end
end
