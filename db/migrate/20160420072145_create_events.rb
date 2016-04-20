class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.boolean :book, :default => false
      t.integer :book_id
      t.boolean :request, :default => false
      t.integer :request_id
      t.boolean :lend, :default => false
      t.integer :lend_id
      t.boolean :review, :default => false
      t.integer :review_id
      t.boolean :like, :default => false
      t.integer :like_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
