class Bucketlist < ApplicationRecord
  validates_presence_of :title, :description, :complete
  
  belongs_to :user
  has_many :listitems

end

