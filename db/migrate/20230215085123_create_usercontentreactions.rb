class CreateUsercontentreactions < ActiveRecord::Migration[6.1]
  def change
    create_table :usercontentreactions do |t|
      t.integer :user_id
      t.integer :inventory_id
      t.integer :reaction_id
      t.timestamps
    end
  end
end
