class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :picture_url, :string, :default => 'http://i.imgur.com/vUmohYJ.jpg'
    add_column :users, :address, :string
    add_column :users, :about, :text
  end
end
