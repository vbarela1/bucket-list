class AddUsersToBucketlists < ActiveRecord::Migration[5.0]
  def change
    add_reference :bucketlists, :user, foreign_key: true
  end
end
