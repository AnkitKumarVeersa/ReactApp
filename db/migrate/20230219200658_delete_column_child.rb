class DeleteColumnChild < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :child
  end
end
