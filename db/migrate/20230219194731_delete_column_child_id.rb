class DeleteColumnChildId < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :child_id
  end
end
