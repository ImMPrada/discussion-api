class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.references :user, foreign_key: { to_table: :users }
      t.references :receiver, foreign_key: { to_table: :posts }, null: true

      t.timestamps
    end
  end
end
