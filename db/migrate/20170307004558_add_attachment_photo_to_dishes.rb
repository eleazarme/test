class AddAttachmentPhotoToDishes < ActiveRecord::Migration
  def self.up
    change_table :admin_dishes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :admin_dishes, :photo
  end
end
