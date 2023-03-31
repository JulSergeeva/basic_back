class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :user_id
      t.datetime :archived_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
