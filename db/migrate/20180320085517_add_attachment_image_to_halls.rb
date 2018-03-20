class AddAttachmentImageToHalls < ActiveRecord::Migration
  def self.up
    change_table :halls do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :halls, :image
  end
end
