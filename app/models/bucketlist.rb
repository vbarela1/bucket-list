class Bucketlist < ApplicationRecord
  validates_presence_of :title, :user_id
  
  belongs_to :user
  has_many :listitems

end

