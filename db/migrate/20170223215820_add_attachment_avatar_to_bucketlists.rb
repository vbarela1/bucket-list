class AddAttachmentAvatarToBucketlists < ActiveRecord::Migration
  def self.up
    change_table :bucketlists do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bucketlists, :avatar
  end
end
