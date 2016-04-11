class AddUserPictureUrlToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :user_picture_url, :string
  end
end
