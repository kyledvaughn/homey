class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :res
      t.integer :group_id

      t.timestamps
    end
  end
end
