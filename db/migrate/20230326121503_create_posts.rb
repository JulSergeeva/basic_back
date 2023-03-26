class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, :id => false do |t|
      t.integer :id
      t.text :body
      t.integer :user_id
      #t.datetime :created_at
      t.datetime :archived_at
      #t.datetime :updated_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
