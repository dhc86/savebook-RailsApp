class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :book_id
      t.integer :owner_id
      t.integer :borrower_id
      t.boolean :accepted, :default => false
      t.boolean :attended_to, :default => false

      t.timestamps null: false
    end
  end
end
