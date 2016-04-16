class CreateImageprofiles < ActiveRecord::Migration
  def change
    create_table :imageprofiles do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
