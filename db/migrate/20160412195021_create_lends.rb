class CreateLends < ActiveRecord::Migration
  def change
    create_table :lends do |t|
      t.integer :book_id
      t.integer :user_id
      t.integer :borrower_id
      t.date :due
      t.date :check_in
      t.date :check_out

      t.timestamps null: false
    end
  end
end
