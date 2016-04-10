class AddPictureUrlToBooks < ActiveRecord::Migration
  def change
    add_column :books, :picture_url, :string, :default => 'http://i.imgur.com/Ibd6JdC.jpg'
  end
end
