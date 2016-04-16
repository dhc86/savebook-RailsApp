class AddAttachmentWallImageToImageprofiles < ActiveRecord::Migration
  def self.up
    change_table :imageprofiles do |t|
      t.attachment :wall_image
    end
  end

  def self.down
    remove_attachment :imageprofiles, :wall_image
  end
end
