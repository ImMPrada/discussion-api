class AddIndexToReactions < ActiveRecord::Migration[6.1]
  def change
    add_index :reactions, [:user_id, :post_id], unique: true
  end
end
