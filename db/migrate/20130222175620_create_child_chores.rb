class CreateChildChores < ActiveRecord::Migration
  def change
    create_table :child_chores do |t|
      t.string :description
      t.integer :reward_points

      t.timestamps
    end
  end
end
