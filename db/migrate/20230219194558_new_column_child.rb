class NewColumnChild < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :child, :integer, array: true, default: []
  end
end
