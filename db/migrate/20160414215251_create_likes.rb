class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :book_id
      t.boolean :click_like, :default => true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
