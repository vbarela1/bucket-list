class AddUserIdToBucketlists < ActiveRecord::Migration[5.0]
  def change
    add_column :bucketlists, :user_id, :integer, default: false 
  end
end
