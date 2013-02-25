class AddUserIdToChildChores < ActiveRecord::Migration
  def change
    add_column :child_chores, :user_id, :integer
    add_index :child_chores, :user_id
  end
end
