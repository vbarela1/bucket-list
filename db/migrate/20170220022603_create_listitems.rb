class CreateListitems < ActiveRecord::Migration[5.0]
  def change
    create_table :listitems do |t|
      t.string :title, null: false 
      t.string :description, null: false
      t.boolean :complete, null: false

      t.timestamps
      t.belongs_to :bucketlist
    end
  end
end
