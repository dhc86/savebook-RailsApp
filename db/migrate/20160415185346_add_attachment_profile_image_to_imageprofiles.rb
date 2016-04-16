class AddAttachmentProfileImageToImageprofiles < ActiveRecord::Migration
  def self.up
    change_table :imageprofiles do |t|
      t.attachment :profile_image
    end
  end

  def self.down
    remove_attachment :imageprofiles, :profile_image
  end
end
